FROM mysql:5.7
USER root

RUN apt-get update && apt-get upgrade -y && apt-get upgrade -y && apt-get install -y \
      libdbd-mysql-perl \
      libdbi-perl \
      libio-socket-ssl-perl \
      libterm-readkey-perl \
      perl \
      wget

RUN wget https://downloads.percona.com/downloads/percona-toolkit/3.3.1/binary/debian/stretch/x86_64/percona-toolkit_3.3.1-1.stretch_amd64.deb --no-check-certificate && \
    dpkg -i percona-toolkit_3.3.1-1.stretch_amd64.deb && \
    rm -f percona-toolkit_3.3.1-1.stretch_amd64.deb


