# Generated by Django 2.2.10 on 2020-03-03 08:52

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('news', '0006_auto_20200301_1319'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='category',
            options={'ordering': ['name'], 'verbose_name': 'categoría', 'verbose_name_plural': 'categorias'},
        ),
    ]
