from django.db import models
from django.contrib.auth.models import User
from django.dispatch import receiver
from django.db.models.signals import post_save
from phone_field import PhoneField
from django.db import connections

def custom_upload_to(instance, filename):
    old_instance = Profile.objects.get(pk=instance.pk)
    old_instance.avatar.delete()
    return 'profiles/' + filename

# Create your models here.
class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    cedula = models.IntegerField(default=0)
    avatar = models.ImageField(upload_to=custom_upload_to, null=True, blank=True)
    bio = models.TextField(null=True, blank=True)
    link = models.URLField(max_length=200, null=True, blank=True)
    tlf = PhoneField(null=True, blank=True)
    nacimiento = models.DateField(default="1900-01-01")
    nombre = models.CharField(max_length=150 , verbose_name='Nombre', null=True, blank=True)

    class Meta:
        verbose_name = 'Perfil'
        verbose_name_plural = 'Perfiles'
        ordering = ['user__username']

@receiver(post_save, sender=User)
def ensure_profile_exists(sender, instance, **kwargs):
    if kwargs.get('created', False):
        Profile.objects.get_or_create(user=instance)
        with connections['caejerb'].cursor() as cursor:
            cursor.execute("select cCelular,cFechaNacimiento,cNombreSocio from taSocios where cCedulaSocio = %s", [instance.username])
            row = cursor.fetchone()
        Profile.objects.filter(user=instance).update(cedula=instance.username, tlf = row[0], nacimiento = row[1], nombre = row[2])
        # print("Se acaba de crear un usuario y su perfil enlazado")