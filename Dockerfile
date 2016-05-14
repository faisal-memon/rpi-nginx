FROM resin/rpi-raspbian:jessie

RUN echo "deb http://ftp.debian.org/debian jessie-backports main" >> /etc/apt/sources.list.d/jessie-backports.list \
	&& apt-get --allow-unauthenticated update \
	&& apt-get -t jessie-backports install --allow-unauthenticated --no-install-recommends --no-install-suggests -y \
						ca-certificates \
						nginx-full \
						gettext-base \
	&& rm -rf /var/lib/apt/lists/*

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
