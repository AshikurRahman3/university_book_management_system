from django.db import models
from django.contrib.auth.models import User

# Create your models here.




class Teacher(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    department = models.ForeignKey('Department', on_delete=models.CASCADE)

    def __str__(self):
        full_name = f"{self.user.first_name} {self.user.last_name}"
        return f"{full_name} ({self.department})"




class Department(models.Model):
    name = models.CharField(max_length=100, unique=True)  # Name of the department (limited to 100 characters), should be unique
    description = models.TextField()  # Description of the department

    def __str__(self):
        return self.name

class Semester(models.Model):
    SEMESTER_CHOICES = (
        (1, '1st Semester'),  # Choice for 1st semester
        (2, '2nd Semester'),  # Choice for 2nd semester
        (3, '3rd Semester'),  # Choice for 3rd semester
        (4, '4th Semester'),  # Choice for 4th semester
        (5, '5th Semester'),  # Choice for 5th semester
        (6, '6th Semester'),  # Choice for 6th semester
        (7, '7th Semester'),  # Choice for 7th semester
        (8, '8th Semester'),  # Choice for 8th semester
    )

    number = models.PositiveSmallIntegerField(choices=SEMESTER_CHOICES)  # Semester number (1 to 8)
    department = models.ForeignKey(Department, on_delete=models.CASCADE)  # Foreign key to the Department model
    # Unique constraint on the combination of number and department, no duplicate semester per department
    class Meta:
        unique_together = ('number', 'department')

    def __str__(self):
        return f'{self.department.name} - {self.get_number_display()}'  # String representation of the semester (e.g., "Department - 1st Semester")

class Book(models.Model):
    title = models.CharField(max_length=100)  # Title of the book
    author = models.CharField(max_length=100)  # Author of the book
    semester = models.ForeignKey(Semester, on_delete=models.CASCADE)  # Foreign key to the Semester model
    department = models.ForeignKey(Department, on_delete=models.CASCADE)  # Foreign key to the Department model
    cover_image = models.ImageField(upload_to='book_covers/', blank=True, null=True)  # Optional book cover image
    link = models.URLField(blank=True, null=True)  # Optional book link
    file = models.FileField(upload_to='book_files/', blank=True, null=True)  # Optional book file

    def __str__(self):
        return f"{self.title} ( {self.department.name} ,  Semester {self.semester.number} )"  # String representation of the book
    

    def archive(self):
        # Create an archived book using the Book attributes
        archived_book = archived_books(
            title=self.title,
            author=self.author,
            semester=self.semester,
            department=self.department,
            cover_image=self.cover_image,
            link=self.link,
            file=self.file
        )
        archived_book.save()

    def delete(self, *args, **kwargs):
        self.archive()  # Archive the book before deleting
        super(Book, self).delete(*args, **kwargs)
    




class archived_books(models.Model):
    title = models.CharField(max_length=100)  # Title of the book
    author = models.CharField(max_length=100)  # Author of the book
    semester = models.ForeignKey(Semester, on_delete=models.CASCADE)  # Foreign key to the Semester model
    department = models.ForeignKey(Department, on_delete=models.CASCADE)  # Foreign key to the Department model
    cover_image = models.ImageField(upload_to='book_covers/', blank=True, null=True)  # Optional book cover image
    link = models.URLField(blank=True, null=True)  # Optional book link
    file = models.FileField(upload_to='book_files/', blank=True, null=True)  # Optional book file

    def __str__(self):
        return f"{self.title} ( {self.department.name} ,  Semester {self.semester.number} )"  # String representation of the book
