# Generated by Django 2.2.10 on 2020-03-02 06:29

import ckeditor.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0007_auto_20200302_0615'),
    ]

    operations = [
        migrations.AlterField(
            model_name='nosotros',
            name='vision',
            field=ckeditor.fields.RichTextField(blank=True, null=True, verbose_name='Visión'),
        ),
    ]
