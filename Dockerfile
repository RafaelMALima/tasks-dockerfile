FROM python:3.12

RUN ./install.sh

RUN ./run.sh

EXPOSE 8000
