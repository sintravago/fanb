from django.db import models
from django.contrib.auth.models import User
from ckeditor_uploader.fields import RichTextUploadingField


# Create your models here.
class category(models.Model):
    name = models.CharField(max_length=150, verbose_name='Nombre')
    description = models.TextField(blank=True, verbose_name='Descripción')
    created = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de creación')
    updated = models.DateTimeField(auto_now=True, verbose_name='Fecha de edición')
    
    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name = 'categoría'
        verbose_name_plural = 'categorias'
        ordering = ['name']

class new(models.Model):
    title = models.CharField(max_length=150 , verbose_name='Titulo')
    description = RichTextUploadingField(verbose_name="Descripción")
    image = models.ImageField(null=True,verbose_name='Imagen', upload_to='news',help_text="Ancho maximo recomendado 750px")
    category = models.ManyToManyField(category, verbose_name='Categoria(s)', related_name='get_news')
    created = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de creación')
    updated = models.DateTimeField(auto_now=True, verbose_name='Fecha de edición')
    author = models.ForeignKey(User, verbose_name="Autor", on_delete=models.PROTECT)
    
    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'noticia'
        ordering = ['-created']