from django.urls import path
from .views import SignUpView, ProfileUpdate, EmailUpdate, cedulaView

urlpatterns = [
<<<<<<< HEAD
    path('signup/<int:username>/', SignUpView.as_view(), name="signup"),
=======
    path('signup/<int:cedula>/', SignUpView.as_view(), name="signup"),
>>>>>>> a5d0f1a747ea6f162875048cd71404464a306c48
    path('cedula/', cedulaView.as_view(), name="cedula"),
    path('profile/', ProfileUpdate.as_view(), name="profile"),
    path('profile/email/', EmailUpdate.as_view(), name="profile_email"),
]