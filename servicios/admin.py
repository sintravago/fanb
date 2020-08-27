from django.contrib import admin
from .models import Banco,TipoCuenta,Opinion,PlazoOrdinario,PlazoTienda,CapacidadPago,PrestamoOrdinario,PrestamoTienda,PrestamoAfianzado,TipoPrestamo
from django.utils.html import format_html
from django.urls import reverse
from django.forms import TextInput
from django.db import models
# Register your models here.

class BancoAdmin(admin.ModelAdmin):
    list_display = ('nombre',)

class TipoCuentaAdmin(admin.ModelAdmin):
    list_display = ('nombre',)

class OpinionAdmin(admin.ModelAdmin):
    list_display = ('nombre',)

class PlazoOrdinarioAdmin(admin.ModelAdmin):
    list_display = ('nombre',)

class PlazoTiendaAdmin(admin.ModelAdmin):
    list_display = ('nombre',)

class CapacidadPagoAdmin(admin.ModelAdmin):
    list_display = ('nombre',)

class PrestamoOrdinarioAdmin(admin.ModelAdmin):
    list_display = ('user', 'cantidad_numeros','cantidad_solicitar','cantidad_aprobada','post_viewpdf')
    def post_viewpdf(self, obj):
        return format_html("<a href="+ reverse('pordinariopdf', kwargs={'prestamo_id': obj.pk})+" target='_blank'>Ver</a>")
    post_viewpdf.short_description = 'Ver PDF'
    
    def get_readonly_fields(self, request, obj=None):
        if request.user.pk == 34:
            return ('created','updated','opinion_analista',)
        elif request.user.pk == 33:
            return ('created','updated','opinion_gerente',)
        else:
            return ('created','updated')

class PrestamoTiendaAdmin(admin.ModelAdmin):
    list_display = ('user','tipo_prestamo','cantidad_numeros','cantidad_solicitar','cantidad_aprobada','post_viewpdf')
    
    def get_readonly_fields(self, request, obj=None):
        if request.user.pk == 34:
            return ('created','updated','opinion_analista',)
        elif request.user.pk == 33:
            return ('created','updated','opinion_gerente',)
        else:
            return ('created','updated') 
    
    def get_queryset(self, request):
        qs = super(PrestamoTiendaAdmin, self).get_queryset(request)
        self.request = request
        return qs
    
    def opinion_analista(self, obj):
        if self.request.user.id == 34:
            return obj.tipo_prestamo
        else:
            return obj.tipo_prestamo
    
    def post_viewpdf(self, obj):
        return format_html("<a href="+ reverse('ptiendapdf', kwargs={'prestamo_id': obj.pk})+" target='_blank'>Ver</a>")
    post_viewpdf.short_description = 'Ver PDF'

class PrestamoAfianzadoAdmin(admin.ModelAdmin):
    list_display = ('user','post_montoavalar','post_viewpdf')
    def post_viewpdf(self, obj):
        return format_html("<a href="+ reverse('pafianzadopdf', kwargs={'prestamo_id': obj.pk})+" target='_blank'>Ver</a>")
    def post_montoavalar(self, obj):
        return obj.monto1+obj.monto2+obj.monto3+obj.monto4
    post_viewpdf.short_description = 'Ver PDF'
    post_montoavalar.short_description = 'Monoto Avalado'
    formfield_overrides = {
        models.IntegerField: {'widget': TextInput(attrs={'size':'10'})}
    }

class TipoPrestamoAdmin(admin.ModelAdmin):
    list_display = ('nombre',)

admin.site.register(Banco, BancoAdmin)
admin.site.register(TipoCuenta, TipoCuentaAdmin)
admin.site.register(Opinion, OpinionAdmin)
admin.site.register(PlazoOrdinario, PlazoOrdinarioAdmin)
admin.site.register(PlazoTienda, PlazoTiendaAdmin)
admin.site.register(CapacidadPago, CapacidadPagoAdmin)
admin.site.register(PrestamoOrdinario, PrestamoOrdinarioAdmin)
admin.site.register(PrestamoTienda, PrestamoTiendaAdmin)
admin.site.register(PrestamoAfianzado, PrestamoAfianzadoAdmin)
admin.site.register(TipoPrestamo, TipoPrestamoAdmin)
