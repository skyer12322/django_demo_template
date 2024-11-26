FROM python:latest

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pup install -r requirement.txt

COPY . .

CMD ["uvicorn", "django_demo_site.asgi:application", "--port", "8000", "--host", "0.0.0.0"]