from django.urls import include,path
from .views import EmpresasListView, EmpresasDetailView

empresas_patterns = ([
    path('', EmpresasListView.as_view(), name ='empresas'),
    path('<int:pk>/', EmpresasDetailView.as_view(), name ='empresa')
], 'empresas')

urlpatterns = [
    path('', include(empresas_patterns)),
]