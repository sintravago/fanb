from django.urls import include,path
from . import views

news_patterns = ([
    path('noticias/', views.news, name ='news'),
    path('noticias/categoria/<int:category_id>/', views.categorys, name ='categorys'),
    path('noticias/<int:new_id>/', views.blog, name ='new')
], 'news')

urlpatterns = [
    path('', include(news_patterns)),
]