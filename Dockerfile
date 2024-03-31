FROM python:3.8.5-slim

RUN apt-get update && \
    apt-get install -y gcc

RUN mkdir /app
COPY . /app
WORKDIR /app
RUN pip install jupyterlab
RUN pip install psycopg2-binary
RUN pip install matplotlib
RUN pip install jupyterlab-geojson



