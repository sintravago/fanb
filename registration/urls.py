from django.urls import path
from .views import SignUpView, ProfileUpdate, EmailUpdate, cedulaView

urlpatterns = [
    path('signup/<int:username>/', SignUpView.as_view(), name="signup"),
    path('cedula/', cedulaView.as_view(), name="cedula"),
    path('profile/', ProfileUpdate.as_view(), name="profile"),
    path('profile/email/', EmailUpdate.as_view(), name="profile_email"),
]