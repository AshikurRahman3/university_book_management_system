from django.shortcuts import render,redirect,get_object_or_404
from .models import Department,Book,Semester,Teacher
from django.contrib.auth.models import User
from django.contrib import auth
from django.contrib import messages
from django.contrib.auth.forms import AuthenticationForm
from django.urls import reverse_lazy
from django.views.generic import UpdateView, DeleteView
from .forms import BookForm
from django.contrib.auth.decorators import login_required
from django.db.models import Q


# Create your views here.

def home(request):
    departments = Department.objects.all()
    return render(request,'home.html',{'departments': departments})

def books(request,department_id):
    department = get_object_or_404(Department, id=department_id)
    semesters = Semester.objects.filter(department=department)
    books = Book.objects.filter(department=department)
    context = {
        'department': department,
        'semesters': semesters,
        'books': books,
    }
    return render(request,'book_display.html',context)


def teacher_login(request):
    if request.method == 'POST':
        form = AuthenticationForm(request, request.POST)
        if form.is_valid():
            user = form.get_user()
            auth.login(request, user)
            return redirect('teacher_home')
        else:
            messages.error(request, 'Invalid username or password')
            return redirect('teacher_login')
    else:
        if request.user.is_authenticated:
           return redirect('teacher_home')
        else:
            form = AuthenticationForm()
            return render(request, 'teacher_login.html', {'form': form})
        
    

def teacher_home(request):
    user = request.user
    teacher = Teacher.objects.get(user=user)
    department = teacher.department
    semesters = Semester.objects.filter(department=department)
    books = Book.objects.filter(semester__in=semesters, department=department)
    context = {
        'user': user,
        'semesters': semesters,
        'books': books,
        'department':department
    }
    return render(request, 'teacher_home.html', context)


def teacher_logout(request):
    auth.logout(request)
    return redirect('/')


class BookUpdateView(UpdateView):
    model = Book
    template_name = 'edit_book.html'
    fields = ['title', 'author', 'semester', 'cover_image', 'link', 'file']

    def get_success_url(self):
        return reverse_lazy('teacher_home')

class BookDeleteView(DeleteView):
    model = Book
    template_name = 'delete_book.html'
    success_url = reverse_lazy('teacher_home')


def add_book(request):
    teacher = Teacher.objects.get(user=request.user)
    if request.method == 'POST':
        form = BookForm(teacher.department_id, request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('teacher_home')
    else:
        form = BookForm(teacher.department_id)
    
    context = {
        'form': form,
    }
    return render(request, 'add_book.html', context)


def teacher_departments(request):
    departments = Department.objects.all()
    return render(request,'teacher_departments.html',{'departments': departments})


def teacher_all_departments_book_display(request,department_id):
    user = request.user
    department = get_object_or_404(Department, id=department_id)
    semesters = Semester.objects.filter(department=department)
    books = Book.objects.filter(department=department)
    context = {
        'user': user,
        'department': department,
        'semesters': semesters,
        'books': books,
    }
    return render(request,'teacher_all_departments_book_display.html',context)
