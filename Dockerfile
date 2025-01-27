FROM python:3

RUN apt-get update 

RUN pip install django==4.2.11

COPY . .

RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]



