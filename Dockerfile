FROM ubuntu:focal

# Python env.
ARG PYTHON_ENV
ENV PYTHON_ENV=${PYTHON_ENV}

WORKDIR /app

# Unbuntu setup
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/New_York
RUN apt-get update && apt-get install -y gcc python3 python3-pip libgl1-mesa-dev libgtk2.0-dev

COPY requirements.txt /
RUN pip3 install -r /requirements.txt
COPY . /app
RUN chmod 755 /app/gunicorn_starter.sh
EXPOSE 8000
ENTRYPOINT ["./gunicorn_starter.sh"]
