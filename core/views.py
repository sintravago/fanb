from django.shortcuts import render

# Create your views here.
def index(request):
    return render(request,"core/index.html")

def caejerb(request):
    return render(request,"core/caejerb.html")

def contacto(request):
    return render(request,"core/contacto.html")

def empresas(request):
    return render(request,"core/empresas.html")

def empresa_alimentos(request):
    return render(request,"core/empresa_alimentos.html")

def empresa_produccion(request):
    return render(request,"core/empresa_produccion.html")

def empresa_transporte(request):
    return render(request,"core/empresa_transporte.html")

def empresa_logistica(request):
    return render(request,"core/empresa_logistica.html")

def empresa_farma(request):
    return render(request,"core/empresa_farma.html")