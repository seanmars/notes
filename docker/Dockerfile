FROM ubuntu:16.04
LABEL Name=python3-test Version=0.3

ENV TZ=Asia/Taipei

RUN apt-get -y update && apt-get upgrade -y
RUN apt-get install -y apt-utils vim wget libpcre3 libpcre3-dev \
    nginx \
    redis-server \
    python3.5 python3-pip python3-venv \
    cron

RUN python3.5 -m pip install --upgrade pip setuptools
RUN pip3 install uwsgi --no-cache-dir

RUN mkdir -p /etc/uwsgi /etc/uwsgi/vassals /var/log/uwsgi /var/log/uwsgi/vassals /run/uwsgi

RUN chown -R www-data:www-data /run/uwsgi
RUN chown -R www-data:www-data /etc/uwsgi
RUN chown -R www-data:www-data /var/log/uwsgi

VOLUME /source

COPY ./requirements.txt /requirements.txt
RUN pip3 install -r requirements.txt

COPY ./uwsgi/emperor.ini /etc/uwsgi/emperor.ini
COPY ./uwsgi/app.ini /etc/uwsgi/vassals/app.ini
COPY ./uwsgi/admin.ini /etc/uwsgi/vassals/admin.ini

COPY ./nginx/site-app-temp.conf /site-app-temp.conf
COPY ./nginx/site-admin-temp.conf /site-admin-temp.conf

RUN touch /etc/nginx/sites-available/app
RUN ln -s /etc/nginx/sites-available/app /etc/nginx/sites-enabled/app

RUN touch /etc/nginx/sites-available/admin
RUN ln -s /etc/nginx/sites-available/admin /etc/nginx/sites-enabled/admin

COPY ./init.sh /init.sh

EXPOSE 80

ENV NGINX_HOST_APP=app.local
ENV NGINX_HOST_ADMIN=admin.local

RUN rm -rf /var/cache/apt/*

ENV LC_ALL=C.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

ENTRYPOINT ["/init.sh"]

CMD ["bash"]
