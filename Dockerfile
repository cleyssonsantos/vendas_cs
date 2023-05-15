FROM python:3.10.11-alpine3.18

RUN pip install pipenv

RUN apk add --no-cache mysql-client

RUN pip install mysql-connector-python

RUN pip install django

WORKDIR /home/python/app

ENV PIPENV_VENV_IN_PROJECT=True

COPY ./vendas /home/python/app/

CMD ["tail", "-f", "/dev/null"]
