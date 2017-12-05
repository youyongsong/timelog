FROM python:3.6-alpine
MAINTAINER yongsong you ysyou@alauda.io

# base pkgs
RUN apk --update add --no-cache openssl ca-certificates postgresql-dev

# build pkgs
RUN apk --update add gcc g++ python3-dev musl-dev

# dev pkgs
RUN apk add curl

COPY requirements /requirements
RUN pip3 install -U pip \
    && pip install -r requirements/dev.txt

WORKDIR /app
CMD python manage.py runserver 0.0.0.0:8080

COPY ./timelog /app
