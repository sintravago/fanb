from django.db import models
from ckeditor.fields import RichTextField

# Create your models here.
class Empresa(models.Model):
    nombre = models.CharField(max_length=150 , verbose_name='Nombre')
    logo = models.ImageField(null=True,verbose_name='Logo', upload_to='Empresas')
    description = RichTextField(verbose_name="Descripción")
    mision = RichTextField(blank=True,null=True,verbose_name="Misión")
    vision = RichTextField(blank=True,null=True,verbose_name="visión")
    estruc_org = RichTextField(blank=True,null=True,verbose_name="Estructura Organizacional")
    producto = RichTextField(blank=True,null=True,verbose_name="Productos/Servicios")
    created = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de creación')
    updated = models.DateTimeField(auto_now=True, verbose_name='Fecha de edición')