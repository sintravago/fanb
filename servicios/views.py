from django.shortcuts import render
from django.db import connections
from django.utils.decorators import method_decorator
from django.contrib.auth.decorators import login_required
from registration.models import Profile
from django.conf import settings
from easy_pdf.views import PDFTemplateView
from django.http import Http404

# Create your views here.
@login_required
def saldos(request):
    perfil = Profile.objects.get(user=request.user)
    with connections['caejerb'].cursor() as cursor:
        cursor.execute("SELECT CONVERT(DECIMAL(11,2),ISNULL(SUM(a.cSaldo), 0)) AS Haberes,CONVERT(DECIMAL(11,2),dbo.L1fn_KJA_SaldoSocio(a.cCodigoSocio, 1)) AS DisponibilidadPtmo, CONVERT(DECIMAL(11,2),dbo.L1fn_KJA_SaldoSocio(a.cCodigoSocio,2)) AS DisponibilidadFianza, CONVERT(DECIMAL(11,2),dbo.L1fn_KJA_SaldoSocio(a.cCodigoSocio,0)) AS Saldo,CONVERT(DECIMAL(11,2),(SELECT ISNULL(SUM(b.cSaldoActual), 0) AS Deudas FROM taPrestamos as b WHERE (b.cStatusPrestamo = 0) AND (b.cCodigoSocio = a.cCodigoSocio)) + (SELECT ISNULL(SUM(- c.cSaldo), 0) AS Haberes  FROM taSaldos AS c WHERE (c.cCuenta LIKE '0202%%') AND (c.cCodigoSocio = a.cCodigoSocio))) AS Deudas,getdate() AS Fecha FROM taSaldos as a WHERE (a.cCuenta LIKE '0201%%') and (a.cCodigoSocio = %s) group by a.cCodigoSocio", [perfil.cedula])
        row = cursor.fetchone()
    return render(request,"servicios/saldos.html",{'saldos':row})

@login_required
def movimientos(request):
    perfil = Profile.objects.get(user=request.user)
    with connections['caejerb'].cursor() as cursor:
        cursor.execute("SELECT Concepto,CONVERT(DECIMAL(11,2),Monto),Cuenta FROM L1sp_KJA_EstadoDeCuentaWeb(%s)", [perfil.cedula])
        rows = cursor.fetchall()
    return render(request,"servicios/movimientos.html",{'movimientos':rows})

@method_decorator(login_required, name='dispatch')
class HelloPDFView(PDFTemplateView):
    template_name = 'servicios/pdf.html'

    base_url = 'file://' + settings.STATIC_ROOT
    download_filename = 'hello.pdf'
    def get_context_data(self, **kwargs):
        perfil = Profile.objects.get(user=self.request.user)
        with connections['caejerb'].cursor() as cursor:
            cursor.execute("SELECT Grupo, Item, NombreGrupo, Concepto, CONVERT(DECIMAL(11,2),round(ISNULL(Monto,0),2)), getdate() AS Fecha FROM L1sp_KJA_EstadoDeCuentaWeb(%s) order by Grupo asc, item desc", [perfil.cedula])
            saldos = cursor.fetchall()
            cursor.execute("SELECT CONVERT(DECIMAL(11,2),round(ISNULL([dbo].[L1fn_KJA_CapacidadDePago](%s),0),2))", [perfil.cedula])
            capacidadd = cursor.fetchone()
            cursor.execute("SELECT Codigo, Cedula, Nombre, StatusSocio, Organismo FROM [dbo].[L1sp_KJA_DatosSocioWeb] (%s)", [perfil.cedula])
            socioo = cursor.fetchone()
            cursor.execute("SELECT a.cCuentaBancaria, b.[cNombreEstado] FROM [CAEJER_KJA].[dbo].[taSocios] as a inner join [CAEJER_KJA].[dbo].[tgEstados] as b on a.cCodigoEstado = b.cCodigoEstado where a.cCodigoSocio = %s", [perfil.cedula])
            datos = cursor.fetchone() 
        dispo = 0 
        for items in saldos:
            if items[0] == 1 and items[1] == 0:
                ho = items[4] * 80 / 100
                #dispo += items[4]
            if items[0] == 2 and items[1] == 0:
                dispo += items[4]
        return super(HelloPDFView, self).get_context_data(
        pagesize='letter',
        title='Estado de Cuenta',
        saldo=saldos,
        capacidad=capacidadd,
        socio=socioo,
        datos=datos,
        ho=ho,
        dispo=dispo,
        user=self.request.user,
        **kwargs
        )   

@login_required        
def prestamo(request):
    return render(request,'servicios/prestamos.html')

@login_required        
def fianza(request):
    return render(request,'servicios/fianza.html')

@login_required        
def retiro(request):
    return render(request,'servicios/retiro.html')

@login_required        
def error_500(request):
    return render(request,'servicios/500.html')

