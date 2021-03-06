# Generated by Django 2.2.10 on 2020-03-01 10:15

import ckeditor.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Empresa',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=150, verbose_name='Nombre')),
                ('logo', models.ImageField(null=True, upload_to='Empresas', verbose_name='Logo')),
                ('description', ckeditor.fields.RichTextField(verbose_name='Descripción')),
                ('mision', ckeditor.fields.RichTextField(verbose_name='Mision')),
                ('vision', ckeditor.fields.RichTextField(verbose_name='vision')),
                ('estruc_org', ckeditor.fields.RichTextField(verbose_name='Estructura Organizacional')),
                ('producto', ckeditor.fields.RichTextField(verbose_name='Producto')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Fecha de creación')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Fecha de edición')),
            ],
        ),
    ]
