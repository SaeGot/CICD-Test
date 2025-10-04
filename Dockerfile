FROM python:3.11-slim
WORKDIR /testproject

ENV PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY ./testproject /testproject

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]