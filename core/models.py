from django.db import models
from ckeditor.fields import RichTextField

# Create your models here.
class menu(models.Model):
    name = models.CharField(max_length=150, verbose_name='Nombre')
    description = RichTextField(verbose_name="Descripción")
    created = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de creación')
    updated = models.DateTimeField(auto_now=True, verbose_name='Fecha de edición')
    
    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name = 'menu'
        verbose_name_plural = 'menu'
        ordering = ['name']