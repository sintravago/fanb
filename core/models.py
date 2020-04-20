from django.db import models
from ckeditor.fields import RichTextField

# Create your models here.
class menu(models.Model):
    name = models.CharField(max_length=150, verbose_name='Nombre')
    description = RichTextField(verbose_name="Descripción")
    created = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de creación')
    updated = models.DateTimeField(auto_now=True, verbose_name='Fecha de edición')
    
    
    class Meta:
        verbose_name = 'menú'
        verbose_name_plural = 'menú'
        ordering = ['created']

    def __str__(self):
        return self.name

class nosotros(models.Model):
    logo = models.ImageField(null=True,verbose_name='Logo', upload_to='Core')
    description = RichTextField(verbose_name="Reseña Historica")
    mision = RichTextField(blank=True,null=True,verbose_name="Misión")
    vision = RichTextField(blank=True,null=True,verbose_name="Visión")
    updated = models.DateTimeField(auto_now=True, verbose_name='Fecha de edición')

    class Meta:
        verbose_name = 'nosotros'
        verbose_name_plural = 'nosotros'
        ordering = ['updated']

class publidad(models.Model):
    banner = models.ImageField(null=True,verbose_name='Baner', upload_to='Core')
    enlace = models.URLField(verbose_name='enlace',null=True)
    created = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de creación')
    updated = models.DateTimeField(auto_now=True, verbose_name='Fecha de edición')

    class Meta:
        verbose_name = 'publidad'
        verbose_name_plural = 'publidad'
        ordering = ['updated']