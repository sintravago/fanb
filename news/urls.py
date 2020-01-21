from django.urls import include,path
from . import views

core_patterns = ([
    path('news/', views.news, name ='news'),
    path('news/category/<int:category_id>/', views.categorys, name ='categorys'),
    path('news/<int:new_id>/', views.blog, name ='new')
], 'news')

urlpatterns = [
    path('', include(core_patterns)),
]