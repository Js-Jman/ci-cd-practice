FROM php:8.2-apache
COPY . /var/www/html/
EXPOSE 80

FROM jenkins/jenkins:lts
USER root
RUN apt update && apt install -y docker.io && apt clean
USER jenkins