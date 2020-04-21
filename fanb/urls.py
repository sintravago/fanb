"""fanb URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import include,path

from django.conf import settings

urlpatterns = [
    path('', include('core.urls')),
    path('', include('news.urls')),
    path('admin-site/', admin.site.urls),
    path('accounts/', include('django.contrib.auth.urls')),
    path('accounts/', include('registration.urls')),
    path('servicios/', include('servicios.urls')),
<<<<<<< HEAD
    path('empresas/', include('empresas.urls')),
    path('ckeditor/', include('ckeditor_uploader.urls')),
=======
>>>>>>> a5d0f1a747ea6f162875048cd71404464a306c48
]

admin.site.site_header = 'Administración CAEJERB'

if settings.DEBUG:
    from django.conf.urls.static import static
    urlpatterns += static(settings.MEDIA_URL, 
        document_root=settings.MEDIA_ROOT)