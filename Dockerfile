FROM percona:5.7
USER root

RUN apt-get update && apt-get install -y \
      libdbd-mysql-perl \
      libdbi-perl \
      libio-socket-ssl-perl \
      libterm-readkey-perl \
      perl \
      wget

RUN wget https://www.percona.com/downloads/percona-toolkit/3.0.3/binary/debian/jessie/x86_64/percona-toolkit_3.0.3-1.jessie_amd64.deb --no-check-certificate && \
    dpkg -i percona-toolkit_3.0.3-1.jessie_amd64.deb && \
    rm -f percona-toolkit_3.0.3-1.jessie_amd64.deb


