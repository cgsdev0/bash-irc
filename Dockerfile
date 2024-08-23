FROM ubuntu

ENV DEV false

RUN apt-get update && apt-get install -y ucspi-tcp sqlite3

EXPOSE 6667

COPY server /app/server

CMD [ "/app/server" ]
