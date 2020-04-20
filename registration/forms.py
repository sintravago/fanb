from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from .models import Profile
from django.db import connections

class UserCreationFormWithEmail(UserCreationForm):
    email = forms.EmailField(required=True, help_text="Requerido. 254 carácteres como máximo y debe ser válido.")

    class Meta:
        model = User
        fields = ("username", "email", "password1", "password2")

    def clean_email(self):
        email = self.cleaned_data.get("email")
        if User.objects.filter(email=email).exists():
            raise forms.ValidationError("El email ya está registrado, prueba con otro.")
        return email


class ProfileForm(forms.ModelForm):
    class Meta:
        model = Profile
        fields = ['avatar', 'nombre','tlf','nacimiento']
        widgets = {
            'avatar': forms.ClearableFileInput(attrs={'class':'form-control-file mt-3'}),
            'nombre': forms.TextInput(attrs={'class':'form-control mt-3', 'placeholder':'Ingrese su nombre'}),
            'tlf': forms.TextInput(attrs={'class':'form-control mt-3', 'placeholder':'Ingrese su nombre'}),
            'nacimiento': forms.DateInput(attrs={'class':'form-control mt-3', 'placeholder':'Ingrese su fecha de Nacimiento'},format ='%d/%m/%Y',),
        }


class EmailForm(forms.ModelForm):
    email = forms.EmailField(required=True, help_text="Requerido. 254 carácteres como máximo y debe ser válido.")

    class Meta:
        model = User
        fields = ['email']

    def clean_email(self):
        email = self.cleaned_data.get("email")
        if 'email' in self.changed_data:
            if User.objects.filter(email=email).exists():
                raise forms.ValidationError("El email ya está registrado, prueba con otro.")
        return email

class cedulaForm(forms.Form):
    username = forms.IntegerField(required=True,help_text="*Solo se podrá registrar si es miembro de CAEJERB",label="",widget=forms.TextInput(attrs={'class': 'form-control mt-3','placeholder':'Ingrese su cédula de identidad','style' :"width:30%;"}))

    def clean_username(self):
        username = self.cleaned_data.get("username")
        try:
            with connections['caejerb'].cursor() as cursor:
                cursor.execute("select cCedulaSocio from taSocios WHERE cCedulaSocio = %s", [username])
                row = cursor.fetchone()
            if not row :
                raise forms.ValidationError("Usted no es un miembro activo de Caejerb.")
            if Profile.objects.filter(cedula=username):
                raise forms.ValidationError("Este número de cédula ya está registrado.")
        except:
            raise forms.ValidationError("Error al conectar con la base de datos.")
        return self.cleaned_data.get("username")