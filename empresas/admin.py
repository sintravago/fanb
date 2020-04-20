from django.contrib import admin
from .models import Empresa
# Register your models here.

class EmpresaAdmin(admin.ModelAdmin):
    readonly_fields = ('created', 'updated')
    list_display = ('nombre','created')
    search_fields = ('title','description')
    ordering = ('-created',)

admin.site.register(Empresa, EmpresaAdmin)