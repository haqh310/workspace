FROM python:3.8-slim

ENV DB_USERNAME=myuser
ENV DB_PASSWORD=bXlwYXNzd29yZA==
ENV DB_HOST=127.0.0.1
ENV DB_PORT=5432
ENV DB_NAME=mydatabase

WORKDIR /app

COPY /analytics /app

RUN pip install --upgrade pip && pip install -r requirements.txt


CMD ["python", "app.py"]

