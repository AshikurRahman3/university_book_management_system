# University Book Management System

Welcome  to the University Book Management System, a Django-based project developed for the Database System Lab course at SUST's CSE department.

## Getting Started

Follow these steps to set up and run the project on your local machine:

### Prerequisites

- Python 3.11
- MySQL
- Visual Studio Code (or any code editor of your choice)

### Setup

1. Create a MySQL database named `university_book_management_system`.

2. Ensure that MySQL is running on your system.

3. Open the project's root folder in Visual Studio Code.

4. Open a new terminal in VS Code.

5. If the terminal says that scripts are disabled, set the execution policy to "RemoteSigned" in Windows PowerShell as an administrator.
6. if (venv) dosent see in terminal, make sure to install python 3.11 .  then activate venv by

 ```bash
 venv\Scripts\activate
 ```

### Database Setup

In the terminal, run the following commands to set up the database:

```bash
python manage.py makemigrations
python manage.py migrate
```
### Running the project

```bash
python manage.py runserver
```
The website will be accessible at http://localhost:8000.


### import sample database
in mysql workbench, click on **server**, then click on **data import**. select **import from self-contained file**. then selection location as this projects **mysql backup** folders **.sql** file. then you will get sample admin, sample teacher, sample books etc.

**sample admin:**

username: admin <br>
password: password


**sample teacher:**

username: ayesha <br>
password: ayesha_tasnim123

### Admin Access
To access the admin panel, create a superuser with the following command:
```bash
python manage.py createsuperuser
```
For simplicity, use the following credentials:

1. Username: admin
2. Password: password

You can now access the admin page and manage the system.

### Creating Teachers
To create a teacher, follow these steps:

1. Create a user.

2. Select the created user as a teacher.

3. Assign a department to the teacher.

### Creating semesters, departments, books 

similar like creating teacher from admin page.
