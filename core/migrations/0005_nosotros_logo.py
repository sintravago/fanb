# Generated by Django 2.2.10 on 2020-03-01 11:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0004_auto_20200301_1142'),
    ]

    operations = [
        migrations.AddField(
            model_name='nosotros',
            name='logo',
            field=models.ImageField(null=True, upload_to='Core', verbose_name='Logo'),
        ),
    ]
