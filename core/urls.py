from django.urls import include,path
from . import views

core_patterns = ([
    path('', views.index, name ='index'),
    path('caejerb/', views.caejerb, name ='caejerb'),
    path('contacto/', views.contacto, name ='contacto'),
    path('paso-paso/', views.paso_paso, name ='paso-paso'),
    path('tutorial/', views.tutorial, name ='tutorial'),
    path('tutorial_tienda/', views.tutorial_tienda, name ='tutorial_tienda'),
    ], 'core')

urlpatterns = [
    path('', include(core_patterns)),
]
