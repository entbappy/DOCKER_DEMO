FROM ubuntu 
RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN pip3 install flask
RUN mkdir /opt/app

WORKDIR /opt/app

COPY . /opt/app

ENTRYPOINT FLASK_API=/opt/app/app.py flask run --host 0.0.0.0


