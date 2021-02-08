FROM python:3.7.7

WORKDIR /code
COPY . /code
RUN pip install -r requirements.txt
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:7000
