# Generated by Django 2.2.10 on 2020-03-01 12:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('news', '0004_auto_20200301_1234'),
    ]

    operations = [
        migrations.AlterField(
            model_name='new',
            name='image',
            field=models.ImageField(help_text='Dimesiones recomendadas 750X350 ó 640X299 pixeles', null=True, upload_to='news', verbose_name='Imagen'),
        ),
    ]
