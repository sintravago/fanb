from django.urls import path
from . import views
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
