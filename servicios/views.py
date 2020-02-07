from django.shortcuts import render
from django.db import connection
from django.utils.decorators import method_decorator
from django.contrib.auth.decorators import login_required
from registration.models import Profile

# Create your views here.
@login_required
def saldos(request):
    perfil = Profile.objects.get(user=request.user)
    with connection.cursor() as cursor:
        cursor.execute("SELECT Haberes,Deudas,DisponiblePmto, DisponibleFianza,Saldo,Fecha FROM [CAEJER_KJA].[dbo].[L1sp_KJA_ResumenSaldos]() where cedula = %s", [perfil.cedula])
        row = cursor.fetchone()
        if row:
            return render(request,"servicios/saldos.html",{'saldos':row})
        else:
            return render(request,"servicios/saldos.html")

@login_required
def movimientos(request):
    perfil = Profile.objects.get(user=request.user)
    with connection.cursor() as cursor:
        cursor.execute("select cCodigoSocio from taSocios WHERE cCedulaSocio = %s", [perfil.cedula])
        row = cursor.fetchone()
        cursor.execute("SELECT Concepto,Monto,Cuenta FROM L1sp_KJA_EstadoDeCuentaWeb(%s)", [row[0]])
        rows = cursor.fetchall()
        if row:
            return render(request,"servicios/movimientos.html",{'movimientos':rows})
        else:
            return render(request,"servicios/movimientos.html")