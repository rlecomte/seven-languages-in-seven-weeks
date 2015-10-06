FROM debian:jessie

RUN apt-get update && apt-get install -y wget unzip
RUN apt-get install -y aptitude

RUN aptitude install -y gprolog

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /
RUN mkdir scripts

ADD day1 scripts/
ADD day2 scripts/
ADD day3 scripts/

ENTRYPOINT ["gprolog"]

