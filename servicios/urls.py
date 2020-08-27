from django.urls import path
from . import views
from .views import HelloPDFView,SolicitarOrdinario,PrestamoOrdinarioPDF,SolicitarTienda,PrestamoTiendaPDF,PrestamoAfianzadoPDF,SolicitarAfianzado

urlpatterns = [
    path('saldos/', HelloPDFView.as_view(), name="saldos"),
    path('movimientos/', views.movimientos, name="movimientos"),
    path('pdfcuenta/', HelloPDFView.as_view(), name="pdfcuenta"),
    path('prestamos/', views.prestamo, name="prestamo"),
    path('fianza/', views.fianza, name="fianza"),
    path('retiro/', views.retiro, name="retiro"),
    path('error_500/', views.error_500, name="error500"),
    path('prestamo_ordinario/', SolicitarOrdinario.as_view(), name="pordinario"),
    path('prestamo_tienda/<int:tipo_prestamo>/', SolicitarTienda.as_view(), name="ptienda"),
    path('prestamo_afianzado/', SolicitarAfianzado.as_view(), name="pafianzado"),
    path('prestamo_ordinario_pdf/<int:prestamo_id>/', PrestamoOrdinarioPDF.as_view(), name="pordinariopdf"),
    path('prestamo_tienda_pdf/<int:prestamo_id>/', PrestamoTiendaPDF.as_view(), name="ptiendapdf"),
    path('prestamo_afianzado_pdf/<int:prestamo_id>/', PrestamoAfianzadoPDF.as_view(), name="pafianzadopdf"),
    
]
