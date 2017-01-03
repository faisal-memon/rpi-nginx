FROM fmemon/rpi-nginx:latest

#RUN apt-get update && \
#    apt-get install -y git && \
#    git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt && \
#    cd /opt/letsencrypt && \
#    ./letsencrypt-auto

RUN apt-get update && \
    apt-get install certbot

#RUN mkdir /var/www/letscencrypt

CMD ["nginx", "-g", "daemon off;"]
