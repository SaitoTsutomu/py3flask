Flask on Python3
======

Base of flask & redis & gunicorn

ex.
docker run -p 80:8080 -v $(pwd)/XXX:/XXX -w /XXX --rm tsutomu7/py3flask python3 runserver.py 0.0.0.0

ex. redis
redis-server

ex. gunicorn
gunicorn -w 4 -b 0.0.0.0:80 runserver:app -D
