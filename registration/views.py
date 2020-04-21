<<<<<<< HEAD
﻿from .forms import UserCreationFormWithEmail, ProfileForm, EmailForm, cedulaForm
=======
from .forms import UserCreationFormWithEmail, ProfileForm, EmailForm, cedulaForm
>>>>>>> a5d0f1a747ea6f162875048cd71404464a306c48
from django.views.generic import CreateView
from django.views.generic.edit import UpdateView, FormView
from django.utils.decorators import method_decorator
from django.contrib.auth.decorators import login_required
from django.urls import reverse_lazy
<<<<<<< HEAD
from django.shortcuts import redirect,render
=======
from django.shortcuts import redirect
>>>>>>> a5d0f1a747ea6f162875048cd71404464a306c48
from django import forms
from .models import Profile
from django.contrib.auth.models import User
from django.db import connection
from django.http import HttpResponseRedirect

# Create your views here.
class SignUpView(CreateView):
    form_class = UserCreationFormWithEmail
    template_name = 'registration/signup.html'

    def get_success_url(self):
        return reverse_lazy('login') + '?register'   

    def get_form(self, form_class=None):
        form = super(SignUpView, self).get_form()
        # Modificar en tiempo real
        form.fields['username'].widget = forms.TextInput(
            attrs={'class':'form-control mb-2', 'placeholder':'Nombre de usuario', 'value': self.kwargs['username'], 'readonly':'readonly' })
        form.fields['username'].help_text = " "
        form.fields['email'].widget = forms.EmailInput(
            attrs={'class':'form-control mb-2', 'placeholder':'Dirección email'})
        form.fields['email'].help_text = " "
        form.fields['password1'].widget = forms.PasswordInput(
            attrs={'class':'form-control mb-2', 'placeholder':'Contraseña'})
        form.fields['password2'].widget = forms.PasswordInput(
            attrs={'class':'form-control mb-2', 'placeholder':'Repite la contraseña'})
        return form

    def post(self, request, *args, **kwargs):
        """
        Handle POST requests: instantiate a form instance with the passed
        POST variables and then check if it's valid.
        """
        
        form = self.get_form()
        if form.is_valid():
            self.object = form.save()
            usuario = User.objects.get(username=request.POST.get("username"))
            with connection.cursor() as cursor:
                cursor.execute("update registration_profile set cedula=%s where id = %s", [kwargs['cedula'],usuario.id])
                cursor.execute("update dbo.registration_profile set tlf=cCelular, nacimiento=cFechaNacimiento from dbo.taSocios where cedula = %s", [usuario.id])
            return self.form_valid(form)
        else:
            return self.form_invalid(form)
        
    def form_valid(self, form):
        """If the form is valid, redirect to the supplied URL."""
        return HttpResponseRedirect(self.get_success_url())

@method_decorator(login_required, name='dispatch')
class ProfileUpdate(UpdateView):
    form_class = ProfileForm
    success_url = reverse_lazy('profile')
    template_name = 'registration/profile_form.html'

    def get_object(self):
        # recuperar el objeto que se va editar
        profile, created = Profile.objects.get_or_create(user=self.request.user)
        return profile

@method_decorator(login_required, name='dispatch')
class EmailUpdate(UpdateView):
    form_class = EmailForm
    success_url = reverse_lazy('profile')
    template_name = 'registration/profile_email_form.html'

    def get_object(self):
        # recuperar el objeto que se va editar
        return self.request.user

    def get_form(self, form_class=None):
        form = super(EmailUpdate, self).get_form()
        # Modificar en tiempo real
        form.fields['email'].widget = forms.EmailInput(
            attrs={'class':'form-control mb-2', 'placeholder':'Email'})
        return form

class cedulaView(FormView):
    template_name = 'registration/cedula.html'
    form_class = cedulaForm
    #{% url 'polls:vote' question.id %} = reverse_lazy('signup')

    def get_success_url(self):
        # find your next url here
        self.request.POST
<<<<<<< HEAD
        cedula_socio = self.request.POST.get('username',None) # here method should be GET or POST.
        #return redirect('signup', 'cedula':cedula)
        return reverse_lazy('signup', kwargs={'username': cedula_socio}) # what url you wish to return
=======
        cedula_socio = self.request.POST.get('cedula',None) # here method should be GET or POST.
        #return redirect('signup', 'cedula':cedula)
        return reverse_lazy('signup', kwargs={'cedula': cedula_socio}) # what url you wish to return
>>>>>>> a5d0f1a747ea6f162875048cd71404464a306c48
