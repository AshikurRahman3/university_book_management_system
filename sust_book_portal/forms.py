from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django import forms
from .models import Teacher, Department,Book

class TeacherAdminForm(UserCreationForm):
    department = forms.ModelChoiceField(queryset=Department.objects.all())

    class Meta:
        model = User
        fields = ['username', 'password1', 'password2', 'first_name', 'last_name', 'email']

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['department'].queryset = Department.objects.all()






class BookForm(forms.ModelForm):
    def __init__(self, teacher_department_id, *args, **kwargs):
        super(BookForm, self).__init__(*args, **kwargs)
        # self.fields['department'].queryset = Department.objects.filter(id=teacher_department_id)
        
    class Meta:
        model = Book
        fields = ['title', 'author', 'semester', 'department', 'cover_image', 'link', 'file']



