from django.db import models
from django.contrib.auth.models import User
from ckeditor_uploader.fields import RichTextUploadingField

# Create your models here.
class Banco(models.Model):
    nombre = models.CharField(max_length=150 , verbose_name='Banco')
    def __str__(self):
        return self.nombre

class TipoCuenta(models.Model):
    nombre = models.CharField(max_length=150 , verbose_name='Tipo de Cuenta')
    def __str__(self):
        return self.nombre
    
    class Meta:
        verbose_name = 'Tipo de cuenta'
        verbose_name_plural = 'Tipos de cuenta'
        ordering = ['nombre']

class Opinion(models.Model):
    nombre = models.CharField(max_length=150 , verbose_name='Opinión')
    def __str__(self):
        return self.nombre
        
    class Meta:
        verbose_name = 'Opinion'
        verbose_name_plural = 'Opiniones'
        ordering = ['nombre']

class PlazoOrdinario(models.Model):
    nombre = models.CharField(max_length=150 , verbose_name='Prestamo Ordinario')
    def __str__(self):
        return self.nombre
    
    class Meta:
        verbose_name = 'Plazo Ordinario'
        verbose_name_plural = 'Plazos Ordinarios'
        ordering = ['nombre']

class PlazoTienda(models.Model):
    nombre = models.CharField(max_length=150 , verbose_name='Prestamo Ordinario')
    def __str__(self):
        return self.nombre
    
    class Meta:
        verbose_name = 'Plazo Tienda'
        verbose_name_plural = 'Plazos Tiendas'
        ordering = ['nombre']

class CapacidadPago(models.Model):
    nombre = models.CharField(max_length=150 , verbose_name='Capacidad de Pago')
    def __str__(self):
        return self.nombre
    
    class Meta:
        verbose_name = 'Capacidad de pago'
        verbose_name_plural = 'Capacidad de pago'
        ordering = ['nombre']

class PrestamoOrdinario(models.Model):
    created = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de creación')
    updated = models.DateTimeField(auto_now=True, verbose_name='Fecha de edición')
    user = models.ForeignKey(User, verbose_name="Usuario", on_delete=models.PROTECT)
    unidad = models.CharField(max_length=150 , verbose_name='Unidad/Dependencia donde labora')
    ciudad = models.CharField(max_length=150 , verbose_name='Ciudad')
    estado = models.CharField(max_length=150 , verbose_name='Estado')
    tlfofi = models.CharField(max_length=150 , verbose_name='Telf. Ofic.', null=True, blank=True)
    faxofi = models.CharField(max_length=150 , verbose_name='Telf. Celular', null=True, blank=True)
    cantidad_letras = models.CharField(max_length=150 , verbose_name='Cantidad en Letras')
    cantidad_numeros = models.DecimalField(default=0, max_digits=15, decimal_places=2, verbose_name='Cantidad en Numeros')
    banco = models.ForeignKey(Banco, verbose_name="Banco", on_delete=models.PROTECT)
    tipo_cuenta = models.ForeignKey(TipoCuenta, verbose_name="Tipo de Cuenta", on_delete=models.PROTECT)
    cuenta = models.CharField(max_length=150 , verbose_name="N° Cuenta")
    prestamo_ordinario = models.ForeignKey(PlazoOrdinario, verbose_name="Prestamo Ordinario", on_delete=models.PROTECT)
    total_haberes = models.DecimalField(default=0, max_digits=15, decimal_places=2, blank=True)
    cantidad_solicitar = models.DecimalField(default=0, max_digits=15, decimal_places=2, blank=True)
    cantidad_aprobada = models.DecimalField(default=0, max_digits=15, decimal_places=2, blank=True)
    capacidad_pago = models.ForeignKey(CapacidadPago, verbose_name="Capacidad de Pago", on_delete=models.PROTECT, null=True, blank=True)
    opinion_analista = models.ForeignKey(Opinion, verbose_name="Opinión del Analista", on_delete=models.PROTECT,related_name='get_oanalista', null=True, blank=True)
    opinion_gerente = models.ForeignKey(Opinion, verbose_name="Opinión del Gerente", on_delete=models.PROTECT,related_name='get_ogerente', null=True, blank=True)
    
    class Meta:
        verbose_name = 'Préstamo Ordinario'
        verbose_name_plural = 'Préstamos Ordinarios'
        ordering = ['user']

class TipoPrestamo(models.Model):
    nombre = models.CharField(max_length=150 , verbose_name='Tipo de Prestamo')
    def __str__(self):
        return self.nombre    
    class Meta:
        verbose_name = 'Tipo de Préstamo'
        verbose_name_plural = 'Tipos de Préstamos'

class PrestamoTienda(models.Model):
    created = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de creación')
    updated = models.DateTimeField(auto_now=True, verbose_name='Fecha de edición')
    user = models.ForeignKey(User, verbose_name="Usuario", on_delete=models.PROTECT)
    unidad = models.CharField(max_length=150 , verbose_name='Unidad/Dependencia donde labora')
    ciudad = models.CharField(max_length=150 , verbose_name='Ciudad')
    estado = models.CharField(max_length=150 , verbose_name='Estado')
    tlfofi = models.CharField(max_length=150 , verbose_name='Telf. Local.', null=True, blank=True)
    faxofi = models.CharField(max_length=150 , verbose_name='Telf. Celular', null=True, blank=True)
    cantidad_letras = models.CharField(max_length=150 , verbose_name='Cantidad en Letras')
    cantidad_numeros = models.DecimalField(default=0, max_digits=15, decimal_places=2, verbose_name='Cantidad en Numeros')
    prestamo_tienda = models.ForeignKey(PlazoTienda, verbose_name="Prestamo Tienda Temporada", on_delete=models.PROTECT)
    casa_comercial = models.CharField(max_length=150 , verbose_name='Nombre Casa Comercial', null=True, blank=True)
    tipo_prestamo = models.ForeignKey(TipoPrestamo, verbose_name="Tipo de Prestamo", on_delete=models.PROTECT)
    total_haberes = models.DecimalField(default=0, max_digits=15, decimal_places=2)
    cantidad_solicitar = models.DecimalField(default=0, max_digits=15, decimal_places=2)
    cantidad_aprobada = models.DecimalField(default=0, max_digits=15, decimal_places=2)
    capacidad_pago = models.ForeignKey(CapacidadPago, verbose_name="Capacidad de Pago", on_delete=models.PROTECT, null=True, blank=True)
    opinion_analista = models.ForeignKey(Opinion, verbose_name="Opinión del Analista", on_delete=models.PROTECT,related_name='get_otanalista', null=True, blank=True)
    opinion_gerente = models.ForeignKey(Opinion, verbose_name="Opinión del Gerente", on_delete=models.PROTECT,related_name='get_otgerente', null=True, blank=True)

    class Meta:
        verbose_name = 'Préstamo Tienda-Temporada'
        verbose_name_plural = 'Préstamos Tienda-Temporada'
        ordering = ['user']


class PrestamoAfianzado(models.Model):
    created = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de creación')
    updated = models.DateTimeField(auto_now=True, verbose_name='Fecha de edición')
    user = models.ForeignKey(User, verbose_name="Usuario", on_delete=models.PROTECT)
    ciudad = models.CharField(max_length=150 , verbose_name='Ciudad')
    estado = models.CharField(max_length=150 , verbose_name='Estado')
    nombre1 = models.CharField(max_length=150 , verbose_name='1er Fiador Nombres y Apellidos')
    grado1 = models.CharField(max_length=150 , verbose_name='1er Fiador Grado')
    cedula1 = models.IntegerField(default=0, verbose_name='1er Fiador Cédula')
    telefono1 = models.CharField(max_length=150 , verbose_name='1er Fiador Telefono')
    monto1 = models.DecimalField(default=0, max_digits=15, decimal_places=2, verbose_name='1er Fiador Monto a Avalar')
    observaciones1 = RichTextUploadingField(verbose_name="1er Fiador Observaciones", null=True, blank=True)
    nombre2 = models.CharField(max_length=150 , verbose_name='2do Fiador Nombres y Apellidos', null=True, blank=True)
    grado2 = models.CharField(max_length=150 , verbose_name='2do Fiador Grado', null=True, blank=True)
    cedula2 = models.IntegerField(default=0, verbose_name='2do Fiador Cédula', null=True, blank=True)
    telefono2 = models.CharField(max_length=150 , verbose_name='2do Fiador Telefono', null=True, blank=True)
    monto2 = models.DecimalField(default=0, max_digits=15, decimal_places=2, verbose_name='2do Fiador Monto a Avalar', null=True, blank=True)
    observaciones2 = RichTextUploadingField(verbose_name="2do Fiador Observaciones", null=True, blank=True)
    nombre3 = models.CharField(max_length=150 , verbose_name='3er Fiador Nombres y Apellidos', null=True, blank=True)
    grado3 = models.CharField(max_length=150 , verbose_name='3er Fiador Grado', null=True, blank=True)
    cedula3 = models.IntegerField(default=0, verbose_name='3er Fiador Cédula', null=True, blank=True)
    telefono3 = models.CharField(max_length=150 , verbose_name='3er Fiador Telefono', null=True, blank=True)
    monto3 = models.DecimalField(default=0, max_digits=15, decimal_places=2, verbose_name='3er Fiador Monto a Avalar', null=True, blank=True)
    observaciones3 = RichTextUploadingField(verbose_name="3er Fiador Observaciones", null=True, blank=True)
    nombre4 = models.CharField(max_length=150 , verbose_name='4to Fiador Nombres y Apellidos', null=True, blank=True)
    grado4 = models.CharField(max_length=150 , verbose_name='4to Fiador Grado', null=True, blank=True)
    cedula4 = models.IntegerField(default=0, verbose_name='4to Fiador Cédula', null=True, blank=True)
    telefono4 = models.CharField(max_length=150 , verbose_name='4to Fiador Telefono', null=True, blank=True)
    monto4 = models.DecimalField(default=0, max_digits=15, decimal_places=2, verbose_name='4to Fiador Monto a Avalar', null=True, blank=True)
    observaciones4 = RichTextUploadingField(verbose_name="4to Fiador Observaciones", null=True, blank=True)  
    class Meta:
        verbose_name = 'Préstamo Afianzado'
        verbose_name_plural = 'Préstamos Afianzados'
        ordering = ['user']