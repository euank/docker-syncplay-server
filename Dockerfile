FROM python:2
RUN pip install twisted

RUN mkdir /app/syncplay -p
RUN git clone https://github.com/Syncplay/syncplay /app/syncplay

COPY ./entrypoint.sh /entrypoint.sh
WORKDIR /app/syncplay
ENTRYPOINT ["/entrypoint.sh"]
