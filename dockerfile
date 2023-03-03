FROM python:3

WORKDIR /urs/src/app

RUN pip install pytube

COPY ./app /usr/src/app

CMD ["python","./miscript.py"]