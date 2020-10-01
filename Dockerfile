FROM python:3.8.6-alpine3.12

MAINTAINER Himadri Kundu

COPY requirements.txt /requirements.txt

RUN pip3 install -r requirements.txt

COPY app /app

WORKDIR /app

CMD ["python3", "app.py"]