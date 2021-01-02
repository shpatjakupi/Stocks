FROM python:3.7.4-alpine
LABEL maintainer="Shpat"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /stocks
WORKDIR /stocks
COPY ./stocks /stocks

RUN adduser -D user
USER user
