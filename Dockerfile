FROM python:slim
ADD . /app
RUN apt update && apt install -y gcc \
    && mkdir -p /Downloads \
    && cd /app && pip3 install -r requirements.txt
WORKDIR /app
ENTRYPOINT python main.py
