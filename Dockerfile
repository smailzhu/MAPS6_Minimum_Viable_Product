FROM debian:latest


RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-rpi.gpio \
    libtiff5-dev \
    libjpeg62-turbo-dev \
    zlib1g-dev \
    libfreetype6-dev \
    liblcms2-dev \
    libwebp-dev \
    python3-setuptools
#--no-install-recommends

RUN mkdir /home/MAPS6_MVP /mnt/SD /mnt/USB

COPY . /home/MAPS6_MVP/

WORKDIR /home/MAPS6_MVP

RUN pip3 install -r requirements.txt

CMD python3 PI_test.py
