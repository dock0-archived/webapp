FROM dock0/foreman
MAINTAINER akerl <me@lesaker.org>
EXPOSE 80 443
RUN pacman -S --noconfirm --needed nginx
ADD nginx /etc/nginx/
ADD run /service/nginx/run
ENV PORT 8080
