FROM debian:buster-slim

ARG PORT

RUN apt-get update && apt-get install -y curl
RUN curl http://localhost:$PORT
