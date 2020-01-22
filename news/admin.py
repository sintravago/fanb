from django.contrib import admin
from .models import category,new

# Register your models here.

class categoryAdmin(admin.ModelAdmin):
    readonly_fields = ('created', 'updated')

class newAdmin(admin.ModelAdmin):
    readonly_fields = ('created', 'updated')
    list_display = ('title','post_category','created','author')
    list_filter = ('category__name','author__username')
    date_hierarchy = 'created'
    search_fields = ('title','description')
    ordering = ('-created',)


    def post_category(self, obj):
        return ", ".join([c.name for c in obj.category.all()])
    post_category.short_description = 'Categorias'

    class Media:
        css = {
            'all': ('news/css/custom_ckeditor.css',)
        }

admin.site.register(category, categoryAdmin)
admin.site.register(new, newAdmin)