# Generated by Django 2.2.10 on 2020-05-12 03:45

import ckeditor_uploader.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('servicios', '0017_auto_20200512_0141'),
    ]

    operations = [
        migrations.AlterField(
            model_name='prestamoafianzado',
            name='observaciones1',
            field=ckeditor_uploader.fields.RichTextUploadingField(blank=True, null=True, verbose_name='1er Fiador Observaciones'),
        ),
    ]
