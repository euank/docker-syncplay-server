FROM python:3
RUN pip install twisted

RUN mkdir /app/syncplay -p
RUN git clone https://github.com/Syncplay/syncplay /app/syncplay && \
    cd /app/syncplay && \
    git checkout v1.6.4a && \
    rm -rf .git

EXPOSE 8999
COPY ./entrypoint.sh /entrypoint.sh
WORKDIR /app/syncplay
ENTRYPOINT ["/entrypoint.sh"]
