from django.urls import include,path
from . import views

core_patterns = ([
    path('', views.index, name ='index'),
    path('caejerb/', views.caejerb, name ='caejerb'),
    path('contacto/', views.contacto, name ='contacto'),
    path('empresas/', views.empresas, name ='empresas'),
    path('empresas/alimentos/', views.empresa_alimentos, name ='alimentos'),
    path('empresas/produccion/', views.empresa_produccion, name ='produccion'),
    path('empresas/transporte/', views.empresa_transporte, name ='transporte'),
    path('empresas/logistica/', views.empresa_logistica, name ='logistica'),
    path('empresas/farma/', views.empresa_farma, name ='farma'),
], 'core')

urlpatterns = [
    path('', include(core_patterns)),
]