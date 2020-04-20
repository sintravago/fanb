from django.contrib import admin
from .models import Profile
# Register your models here.

class ProfileAdmin(admin.ModelAdmin):
    list_display = ('user','cedula','nombre',)
    # list_filter = ('user__username',)
    # date_hierarchy = 'created'
    # search_fields = ('title','description')
    # ordering = ('-created',)

admin.site.register(Profile, ProfileAdmin)