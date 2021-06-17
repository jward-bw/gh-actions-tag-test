FROM debian:buster-slim

ARG PORT

RUN apt-get update && apt-get install -y wget
RUN wget -t 10 --max-redirect 4 --retry-connrefused -nv http://localhost:$PORT/index.html -O /opt/solr-8.6.2-BW-TEST.tgz
