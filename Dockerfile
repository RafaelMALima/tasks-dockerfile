FROM python:3.11 

WORKDIR /app

COPY . .

RUN cd /app

RUN pip install django

RUN pip install psycopg2

RUN pip install django-environ

RUN python3 manage.py migrate

ENV DJANGO_SUPERUSER_PASSWORD cloud 

ENV DJANGO_SUPERUSER_USERNAME cloud

ENV DJANGO_SUPERUSER_EMAIL cloud@a.com

RUN python3 manage.py createsuperuser --noinput

RUN python3 manage.py runserver 0:8080

EXPOSE 8080
