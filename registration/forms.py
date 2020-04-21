from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from .models import Profile
<<<<<<< HEAD
from django.db import connections
=======
from django.db import connection
>>>>>>> a5d0f1a747ea6f162875048cd71404464a306c48

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
<<<<<<< HEAD
        fields = ['avatar', 'nombre','tlf','nacimiento']
        widgets = {
            'avatar': forms.ClearableFileInput(attrs={'class':'form-control-file mt-3'}),
            'nombre': forms.TextInput(attrs={'class':'form-control mt-3', 'placeholder':'Ingrese su nombre'}),
            'tlf': forms.TextInput(attrs={'class':'form-control mt-3', 'placeholder':'Ingrese su nombre'}),
            'nacimiento': forms.DateInput(attrs={'class':'form-control mt-3', 'placeholder':'Ingrese su fecha de Nacimiento'},format ='%d/%m/%Y',),
=======
        fields = ['avatar', 'bio', 'link','tlf','nacimiento']
        widgets = {
            'avatar': forms.ClearableFileInput(attrs={'class':'form-control-file mt-3'}),
            'bio': forms.Textarea(attrs={'class':'form-control mt-3', 'rows':3, 'placeholder':'Biografía'}),
            'link': forms.URLInput(attrs={'class':'form-control mt-3', 'placeholder':'Enlace'}),
            'nacimiento': forms.DateInput(attrs={'class':'form-control mt-3', 'placeholder':'Fecha de Nacimiento'},format ='%Y/%m/%d'),
>>>>>>> a5d0f1a747ea6f162875048cd71404464a306c48
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
<<<<<<< HEAD
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
=======
    cedula = forms.IntegerField(required=True,help_text="Requerido.")

    def clean_cedula(self):
        with connection.cursor() as cursor:
            cursor.execute("select cCedulaSocio from taSocios WHERE cCedulaSocio = %s", [self.cleaned_data.get("cedula")])
            row = cursor.fetchone()
            if not row or Profile.objects.filter(cedula=self.cleaned_data.get("cedula")):
                raise forms.ValidationError("Cédula no valida.")
        return self.cleaned_data.get("cedula")
>>>>>>> a5d0f1a747ea6f162875048cd71404464a306c48
