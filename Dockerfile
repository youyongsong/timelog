FROM python:3.6-alpine
MAINTAINER yongsong you ysyou@alauda.io

# base pkgs
RUN apk --update add --no-cache openssl ca-certificates postgresql-dev

# production deployement tools
RUN pip3 install -U pip \
    && pip install gunicorn==19.6.0

# build pkgs
RUN apk --update add gcc g++ python3-dev musl-dev

# dev pkgs
RUN apk add curl

COPY requirements.txt /requirements.txt
RUN pip3 install -U pip \
    && pip install -r requirements.txt

WORKDIR /app
CMD gunicorn -w 2 site_config.wsgi -b 0.0.0.0:8080

COPY ./timelog /app
