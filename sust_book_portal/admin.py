from django.contrib import admin
from .models import Department, Semester, Book , archived_books

from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.models import User
from .models import Teacher
from .forms import TeacherAdminForm



# Register your models here.


class TeacherAdmin(UserAdmin):
    add_form = TeacherAdminForm
    model = User
    list_display = ['username', 'first_name', 'last_name', 'email', 'is_staff']
    fieldsets = (
        (None, {'fields': ('username', 'password1', 'password2', 'first_name', 'last_name', 'email')}),
        ('Department', {'fields': ('department',)}),
        ('Permissions', {'fields': ('is_active', 'is_staff', 'is_superuser', 'groups', 'user_permissions')}),
    )
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('username', 'password1', 'password2', 'first_name', 'last_name', 'email', 'department', 'is_staff', 'is_active')}
        ),
    )

admin.site.unregister(User)
admin.site.register(User, TeacherAdmin)
admin.site.register(Teacher)



admin.site.register(Department)
admin.site.register(Semester)
admin.site.register(Book)
admin.site.register(archived_books)
