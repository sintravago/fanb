from django.shortcuts import render
from .models import Empresa
from django.views.generic.list import ListView
from django.views.generic.detail import DetailView

# Create your views here.

class EmpresasListView(ListView):

    model = Empresa
    template_name = 'empresas/empresas.html'

class EmpresasDetailView(DetailView):

    model = Empresa
    template_name = 'empresas/empresa.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        context['empresas'] = Empresa.objects.all()
        return context