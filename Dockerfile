FROM dock0/foreman
MAINTAINER akerl <me@lesaker.org>
EXPOSE 80 443
RUN pacman -S --noconfirm --needed nginx
RUN mkdir -p /etc/nginx/sites
ADD nginx.conf /etc/nginx/nginx.conf
ADD run /service/nginx/run

