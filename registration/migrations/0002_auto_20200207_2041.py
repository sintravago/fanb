# Generated by Django 2.1.15 on 2020-02-07 20:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('registration', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profile',
            name='nacimiento',
            field=models.DateField(default='1900-01-01'),
        ),
    ]