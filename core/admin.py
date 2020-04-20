from django.contrib import admin
from .models import menu,nosotros,publidad

# Register your models here.
class menuAdmin(admin.ModelAdmin):
    readonly_fields = ('created', 'updated')
    list_display = ('name','updated')

class nosotrosAdmin(admin.ModelAdmin):
    readonly_fields = ('updated',)

class publidadAdmin(admin.ModelAdmin):
    readonly_fields = ('created', 'updated')

admin.site.register(menu, menuAdmin)
admin.site.register(nosotros, nosotrosAdmin)
# admin.site.register(publidad, publidadAdmin)