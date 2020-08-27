from django import forms
from .models import PrestamoOrdinario, PrestamoTienda, PrestamoAfianzado

class PrestamoOrdinarioForm(forms.ModelForm):
    class Meta:
        model = PrestamoOrdinario
        fields = ['user','unidad','ciudad','estado','tlfofi','faxofi','cantidad_numeros','cantidad_letras','banco','tipo_cuenta','cuenta','prestamo_ordinario','total_haberes','cantidad_solicitar']
        widgets = {
            'unidad': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Unidad/Dependencia donde labora'}),
            'ciudad': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Ciudad'}),
            'estado': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Estado'}),
            'tlfofi': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Telf. Ofic.'}),
            'faxofi': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Telf. fax'}),
            'cantidad_letras': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Cantidad en letras'}),
            'cantidad_numeros': forms.NumberInput(attrs={'class':'form-control', 'placeholder':'Cantidad en números'}),
            'banco': forms.Select(attrs={'class':'form-control', 'placeholder':'Banco'}),
            'tipo_cuenta': forms.Select(attrs={'class':'form-control', 'placeholder':'Tipo de Cuenta'}),
            'cuenta': forms.TextInput(attrs={'class':'form-control', 'placeholder':'N° de cuenta bancaria'}),
            'prestamo_ordinario': forms.Select(attrs={'class':'form-control', 'placeholder':'Préstamo ordinario'}),
            'user': forms.HiddenInput(),
        }
        
        def clean_user(self):
            user = self.request.user
            return user

class PrestamoTiendaForm(forms.ModelForm):
    class Meta:
        model = PrestamoTienda
        fields = ['user','unidad','ciudad','estado','tlfofi','faxofi','cantidad_numeros','cantidad_letras','prestamo_tienda','casa_comercial','tipo_prestamo']
        widgets = {
            'unidad': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Unidad/Dependencia donde labora'}),
            'ciudad': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Ciudad'}),
            'estado': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Estado'}),
            'tlfofi': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Telf. Local.'}),
            'faxofi': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Telf. Celular'}),
            'cantidad_letras': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Cantidad en letras'}),
            'cantidad_numeros': forms.NumberInput(attrs={'class':'form-control', 'placeholder':'Cantidad en números'}),
            'casa_comercial': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Nombre Casa Comercial'}),
            'prestamo_tienda': forms.Select(attrs={'class':'form-control', 'placeholder':'Préstamo TIENDA TEMPORADA'}),
            'tipo_prestamo': forms.HiddenInput(),
            'user': forms.HiddenInput(),
        }
        
        def clean_tipo_prestamo(self):
            tipo_prestamo = self.kwargs['tipo_prestamo']
            return tipo_prestamo
        
        def clean_user(self):
            user = self.request.user
            return user

class PrestamoAfianzadoForm(forms.ModelForm):
    class Meta:
        model = PrestamoAfianzado
        fields = ['user','ciudad','estado','nombre1','grado1','cedula1','telefono1','monto1','nombre2','grado2','cedula2','telefono2','monto2','nombre3','grado3','cedula3','telefono3','monto3','nombre4','grado4','cedula4','telefono4','monto4']
        widgets = {
            'ciudad': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Ciudad'}),
            'estado': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Estado'}),
            'nombre1': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Nombres y Apellidos'}),
            'grado1': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Grado'}),
            'cedula1': forms.NumberInput(attrs={'class':'form-control', 'placeholder':'Cédula'}),
            'telefono1': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Telefonos'}),
            'monto1': forms.NumberInput(attrs={'class':'form-control', 'placeholder':'Monto a Avalar'}),
            'nombre2': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Nombres y Apellidos'}),
            'grado2': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Grado'}),
            'cedula2': forms.NumberInput(attrs={'class':'form-control', 'placeholder':'Cédula'}),
            'telefono2': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Telefonos'}),
            'monto2': forms.NumberInput(attrs={'class':'form-control', 'placeholder':'Monto a Avalar'}),
            'nombre3': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Nombres y Apellidos'}),
            'grado3': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Grado'}),
            'cedula3': forms.NumberInput(attrs={'class':'form-control', 'placeholder':'Cédula'}),
            'telefono3': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Telefonos'}),
            'monto3': forms.NumberInput(attrs={'class':'form-control', 'placeholder':'Monto a Avalar'}),
            'nombre4': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Nombres y Apellidos'}),
            'grado4': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Grado'}),
            'cedula4': forms.NumberInput(attrs={'class':'form-control', 'placeholder':'Cédula'}),
            'telefono4': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Telefonos'}),
            'monto4': forms.NumberInput(attrs={'class':'form-control', 'placeholder':'Monto a Avalar'}),
            'user': forms.HiddenInput(),
        }