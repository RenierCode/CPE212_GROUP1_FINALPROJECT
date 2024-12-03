FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y apache2 apache2-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 8080

COPY ./WEB-APP /var/www/html

CMD ["apache2ctl", "-D", "FOREGROUND"]
