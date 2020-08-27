# Generated by Django 2.2.10 on 2020-05-06 08:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('servicios', '0003_auto_20200506_0508'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='prestamoafianzado',
            name='fiador1',
        ),
        migrations.RemoveField(
            model_name='prestamoafianzado',
            name='fiador2',
        ),
        migrations.RemoveField(
            model_name='prestamoafianzado',
            name='fiador3',
        ),
        migrations.RemoveField(
            model_name='prestamoafianzado',
            name='fiador4',
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='cedula1',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='cedula2',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='cedula3',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='cedula4',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='ciudad',
            field=models.CharField(default='', max_length=150, verbose_name='Ciudad'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='estado',
            field=models.CharField(default='', max_length=150, verbose_name='Estado'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='grado1',
            field=models.CharField(default='', max_length=150, verbose_name='grado'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='grado2',
            field=models.CharField(default='', max_length=150, verbose_name='grado'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='grado3',
            field=models.CharField(default='', max_length=150, verbose_name='grado'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='grado4',
            field=models.CharField(default='', max_length=150, verbose_name='grado'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='monto1',
            field=models.DecimalField(decimal_places=2, default=0, max_digits=15),
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='monto2',
            field=models.DecimalField(decimal_places=2, default=0, max_digits=15),
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='monto3',
            field=models.DecimalField(decimal_places=2, default=0, max_digits=15),
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='monto4',
            field=models.DecimalField(decimal_places=2, default=0, max_digits=15),
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='nombre1',
            field=models.CharField(default='', max_length=150, verbose_name='Nombres y Apellidos'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='nombre2',
            field=models.CharField(default='', max_length=150, verbose_name='Nombres y Apellidos'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='nombre3',
            field=models.CharField(default='', max_length=150, verbose_name='Nombres y Apellidos'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='nombre4',
            field=models.CharField(default='', max_length=150, verbose_name='Nombres y Apellidos'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='telefono1',
            field=models.CharField(default='', max_length=150, verbose_name='Telefono'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='telefono2',
            field=models.CharField(default='', max_length=150, verbose_name='Telefono'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='telefono3',
            field=models.CharField(default='', max_length=150, verbose_name='Telefono'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='prestamoafianzado',
            name='telefono4',
            field=models.CharField(default='', max_length=150, verbose_name='Telefono'),
            preserve_default=False,
        ),
        migrations.DeleteModel(
            name='Fiador',
        ),
    ]
