FROM alpine:3.17

RUN apk-get -y update  && apk-get install -y java*

COPY ./usr/local/apache2/htdocs/

EXPOSE 80

CMD  ["httpd-foreground"]

