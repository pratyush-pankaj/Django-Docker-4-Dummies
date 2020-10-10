FROM python:3.7-alpine
RUN apk update
RUN apk add build-base
RUN pip install -U pylint

RUN apk add --update --no-cache mysql-client jpeg-dev
RUN apk add --update --no-cache --virtual .tmp-build-deps \
      gcc libc-dev linux-headers mysql-dev musl-dev zlib zlib-dev
#to delete tmp file
#RUN apk del .tmp-build-deps

ENV PYTHONUNBUFFERED 1
RUN export PYTHONPATH="$PYTHONPATH:/app"

ENV PATH="/scripts:${PATH}"

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app
COPY ./scripts /scripts

RUN chmod +x /scripts/*

RUN mkdir -p /vol/web/media
RUN mkdir -p /vol/web/

RUN adduser -D user
RUN chown -R user:user /vol
RUN chmod -R 755 /vol/web
USER user

CMD ["entrypoint.sh"]

EXPOSE 8000