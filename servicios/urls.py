from django.urls import path
from . import views

urlpatterns = [
    path('saldos/', views.saldos, name="saldos"),
    path('movimientos/', views.movimientos, name="movimientos"),
]