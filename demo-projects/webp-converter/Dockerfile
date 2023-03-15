FROM ubuntu

LABEL maintainer="michabre"

WORKDIR /app

RUN apt-get update \
  && apt-get install webp -y

RUN apt install software-properties-common -y \
  && apt install pip

COPY ./app /app/

RUN pip install -r requirements.txt
