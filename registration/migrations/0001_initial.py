# Generated by Django 2.2 on 2020-02-07 16:05

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import phone_field.models
import registration.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Profile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cedula', models.IntegerField(default=0)),
                ('avatar', models.ImageField(blank=True, null=True, upload_to=registration.models.custom_upload_to)),
                ('bio', models.TextField(blank=True, null=True)),
                ('link', models.URLField(blank=True, null=True)),
                ('tlf', phone_field.models.PhoneField(blank=True, max_length=31, null=True)),
                ('nacimiento', models.DateField()),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'ordering': ['user__username'],
            },
        ),
    ]
