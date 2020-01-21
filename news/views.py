from django.shortcuts import render,get_object_or_404
from .models import new,category

def news(request):
    blogs = new.objects.all()
    recent_blogs = blogs[:3]
    categorys = category.objects.all()
    return render(request,"news/noticias.html",{'blogs':blogs, 'categorys':categorys, 'recent_blogs':recent_blogs})

def categorys(request,category_id):
    cat = get_object_or_404(category, id=category_id)
    blogs = new.objects.count()
    categorys = category.objects.all()
    return render(request,"news/categorias.html",{'blogs':cat,'categorys':categorys, 'todo':blogs})

def blog(request,new_id):
    result = get_object_or_404(new, id=new_id)
    blogs = new.objects.all()
    categorys = category.objects.all()
    return render(request,"news/noticia.html",{'blog':result,'categorys':categorys, 'todo':blogs})