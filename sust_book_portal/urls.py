from django.urls import path
from . import views

urlpatterns = [
    path('',views.home,name='home'),
   path('departments/<int:department_id>/books/', views.books, name='books'),
   path('teacher_login',views.teacher_login,name='teacher_login'),
   path('teacher_home',views.teacher_home,name='teacher_home'),
   path('teacher_logout',views.teacher_logout,name='teacher_logout'),
   path('book/<int:pk>/edit/', views.BookUpdateView.as_view(), name='edit_book'),
    path('book/<int:pk>/delete/', views.BookDeleteView.as_view(), name='delete_book'),
    path('add_book/', views.add_book, name='add_book'),
    path('teacher_departments', views.teacher_departments, name='teacher_departments'),
    path('departments/<int:department_id>/teacher_all_departments_book_display/', views.teacher_all_departments_book_display, name='teacher_all_departments_book_display'),
       path('archived_books/', views.archived_books_list, name='archived_books_list'),
    path('restore_book/<int:pk>/', views.restore_book, name='restore_book'),
    path('book_search/', views.book_search, name='book_search'),
]