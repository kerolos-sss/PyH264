# syntax=docker/dockerfile:1
FROM python:3.7-alpine
RUN apk update \
    && apk upgrade \
    && apk add --no-cache \
        freetype-dev \
        libpng-dev \
        jpeg-dev \
        libjpeg-turbo-dev

RUN apk add --no-cache gcc musl-dev linux-headers
RUN apk add --no-cache zlib jpeg-dev zlib-dev
RUN pip install --upgrade pip
RUN pip uninstall pillow
RUN pip install Pillow
RUN pip install numpy
RUN pip install flask
WORKDIR /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY ./app.py ./app.py

CMD ["flask", "run"]
