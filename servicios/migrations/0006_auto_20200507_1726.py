# Generated by Django 2.2.10 on 2020-05-07 17:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('servicios', '0005_auto_20200506_0847'),
    ]

    operations = [
        migrations.AlterField(
            model_name='prestamoordinario',
            name='faxofi',
            field=models.CharField(blank=True, max_length=150, null=True, verbose_name='Telf. Celular'),
        ),
        migrations.AlterField(
            model_name='prestamoordinario',
            name='tlfofi',
            field=models.CharField(blank=True, max_length=150, null=True, verbose_name='Telf. Ofic.'),
        ),
    ]
