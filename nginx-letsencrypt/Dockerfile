FROM fmemon/rpi-nginx:latest

RUN apt-get update && \
    apt-get install certbot

#RUN mkdir /var/www/letscencrypt

CMD ["nginx", "-g", "daemon off;"]
