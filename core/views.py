from django.shortcuts import render,get_object_or_404
from .models import menu,nosotros
from empresas.models import Empresa
from django.contrib.auth.decorators import login_required

# Create your views here.
def index(request):
    data = get_object_or_404(menu, id=3)
    empresas = Empresa.objects.all()
    return render(request,"core/index.html",{'menu':data,'empresas':empresas})

def caejerb(request):
    data = get_object_or_404(nosotros, id=1)
    return render(request,"core/caejerb.html",{'nosotros':data})

def contacto(request):
    return render(request,"core/contacto.html")

def paso_paso(request):
    return render(request,"core/paso_paso.html")

@login_required
def tutorial(request):
    return render(request,"core/tutorial.html")

@login_required
def tutorial_tienda(request):
    return render(request,"core/tutorial_tienda.html")
