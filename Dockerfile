FROM golang:1.12
ENV LIBRDKAFKA_VERSION "v1.1.0"
# setup librdkafka

RUN wget -qO - https://packages.confluent.io/deb/5.3/archive.key | apt-key add - &&\
    add-apt-repository "deb [arch=amd64] https://packages.confluent.io/deb/5.3 stable main" &&\
    apt-cache madison librdkafka-dev &&\
    apt-get update &&\
    apt-get install -y build-essential fakeroot dpkg-dev librdkafka-dev
#    git clone https://github.com/edenhill/librdkafka.git &&\
#    cd ./librdkafka &&\
#    ./configure --prefix /usr &&\
#   make &&\
#    make install &&\
#    pkg-config --cflags rdkafka
