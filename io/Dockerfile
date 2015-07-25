FROM debian:jessie

RUN apt-get update && apt-get install -y wget unzip
RUN apt-get install -y aptitude

RUN aptitude install -y build-essential cmake libreadline-dev libssl-dev ncurses-dev libffi-dev zlib1g-dev libpcre3-dev libpng-dev libtiff4-dev libjpeg62-dev python-dev libpng-dev libtiff4-dev libjpeg62-dev libmysqlclient-dev libmemcached-dev libtokyocabinet-dev libsqlite3-dev libdbi0-dev libpq-dev libgmp3-dev libogg-dev libvorbis-dev libtaglib-cil-dev libtag1-dev libtheora-dev libsamplerate0-dev libloudmouth1-dev libsndfile1-dev libflac-dev libgl1-mesa-dev libglu1-mesa-dev freeglut3-dev libxmu-dev libxi-dev libxml2-dev libyajl-dev uuid-dev liblzo2-dev zlib1g-dev libevent-dev

RUN wget http://iobin.suspended-chord.info/linux/iobin-linux-x64-deb-current.zip &&\
	unzip iobin-linux-x64-deb-current.zip &&\
	dpkg -i IoLanguage-2013.11.04-Linux-x64.deb &&\
	ldconfig

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /
RUN mkdir scripts

ADD day1 scripts/
ADD day2 scripts/
ADD day3 scripts/

#ENTRYPOINT io
