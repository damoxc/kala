FROM python:3.6

RUN apt-get update && apt-get install -y -yy uwsgi uwsgi-plugin-python3 python3-pip && mkdir /opt/kala
COPY setup.py kala.py /opt/kala/

RUN pip3 install /opt/kala

ENV UWSGI_BUFFER_SIZE 65536
ENV UWSGI_EXTRA_UWSGI ""

EXPOSE 5000

CMD uwsgi --plugin python3 --http-socket 0.0.0.0:5000 --wsgi kala:app --uid www-data --gid www-data --harakiri 0 --reload-on-as 0 --reload-on-rss 0 --buffer-size $UWSGI_BUFFER_SIZE $UWSGI_EXTRA_ARGS
