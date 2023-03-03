FROM python:3

WORKDIR /urs/src/app

RUN pip install pytube

COPY . .

CMD ["python","./miscript.py"]