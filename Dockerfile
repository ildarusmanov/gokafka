FROM golang:1.12
ENV LIBRDKAFKA_VERSION "v1.0.0"
# setup librdkafka
RUN apt-get update &&\
    apt-get install -y build-essential fakeroot dpkg-dev &&\
    git clone https://github.com/edenhill/librdkafka.git &&\
    cd ./librdkafka &&\
    ./configure --prefix /usr &&\
    make &&\
    make install &&\
    pkg-config --cflags rdkafka
