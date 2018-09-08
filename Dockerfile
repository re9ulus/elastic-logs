from ubuntu:bionic

ARG ELASTIC_VERSION=elasticsearch-6.4.0.deb

RUN apt-get update && apt install -y \
    wget \
    default-jre \
    default-jdk \
    # For development only, remove later
    curl

RUN wget https://artifacts.elastic.co/downloads/elasticsearch/${ELASTIC_VERSION} && \
    dpkg -i ${ELASTIC_VERSION} && \
    rm ${ELASTIC_VERSION}
