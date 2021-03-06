# Generated by Django 2.2.10 on 2020-05-06 08:47

import ckeditor_uploader.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('servicios', '0004_auto_20200506_0840'),
    ]

    operations = [
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='cedula1',
            field=models.IntegerField(default=0, verbose_name='1er Fiador Cédula'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='cedula2',
            field=models.IntegerField(default=0, verbose_name='2do Fiador Cédula'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='cedula3',
            field=models.IntegerField(default=0, verbose_name='3er Fiador Cédula'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='cedula4',
            field=models.IntegerField(default=0, verbose_name='4to Fiador Cédula'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='grado1',
            field=models.CharField(max_length=150, verbose_name='1er Fiador Grado'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='grado2',
            field=models.CharField(max_length=150, verbose_name='2do Fiador Grado'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='grado3',
            field=models.CharField(max_length=150, verbose_name='3er Fiador Grado'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='grado4',
            field=models.CharField(max_length=150, verbose_name='4to Fiador Grado'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='monto1',
            field=models.DecimalField(decimal_places=2, default=0, max_digits=15, verbose_name='1er Fiador Monto a Avalar'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='monto2',
            field=models.DecimalField(decimal_places=2, default=0, max_digits=15, verbose_name='2do Fiador Monto a Avalar'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='monto3',
            field=models.DecimalField(decimal_places=2, default=0, max_digits=15, verbose_name='3er Fiador Monto a Avalar'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='monto4',
            field=models.DecimalField(decimal_places=2, default=0, max_digits=15, verbose_name='4to Fiador Monto a Avalar'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='nombre1',
            field=models.CharField(max_length=150, verbose_name='1er Fiador Nombres y Apellidos'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='nombre2',
            field=models.CharField(max_length=150, verbose_name='2do Fiador Nombres y Apellidos'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='nombre3',
            field=models.CharField(max_length=150, verbose_name='3er Fiador Nombres y Apellidos'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='nombre4',
            field=models.CharField(max_length=150, verbose_name='4to Fiador Nombres y Apellidos'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='observaciones1',
            field=ckeditor_uploader.fields.RichTextUploadingField(verbose_name='1er Fiador Observaciones'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='observaciones2',
            field=ckeditor_uploader.fields.RichTextUploadingField(verbose_name='2do Fiador Observaciones'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='observaciones3',
            field=ckeditor_uploader.fields.RichTextUploadingField(verbose_name='3er Fiador Observaciones'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='observaciones4',
            field=ckeditor_uploader.fields.RichTextUploadingField(verbose_name='4to Fiador Observaciones'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='telefono1',
            field=models.CharField(max_length=150, verbose_name='1er Fiador Telefono'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='telefono2',
            field=models.CharField(max_length=150, verbose_name='2do Fiador Telefono'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='telefono3',
            field=models.CharField(max_length=150, verbose_name='3er Fiador Telefono'),
        ),
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='telefono4',
            field=models.CharField(max_length=150, verbose_name='4to Fiador Telefono'),
        ),
    ]
