from django.urls import path
from . import views
<<<<<<< HEAD
from .views import HelloPDFView

urlpatterns = [
    path('saldos/', HelloPDFView.as_view(), name="saldos"),
    path('movimientos/', views.movimientos, name="movimientos"),
    path('pdfcuenta/', HelloPDFView.as_view(), name="pdfcuenta"),
    path('prestamos/', views.prestamo, name="prestamo"),
    path('fianza/', views.fianza, name="fianza"),
    path('retiro/', views.retiro, name="retiro"),
    path('error_500/', views.error_500, name="error500"),
]
=======

urlpatterns = [
    path('saldos/', views.saldos, name="saldos"),
    path('movimientos/', views.movimientos, name="movimientos"),
]
>>>>>>> a5d0f1a747ea6f162875048cd71404464a306c48
