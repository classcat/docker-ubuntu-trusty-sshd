FROM ubuntu:vivid
MAINTAINER Masashi Okumura <masao@classcat.com>

RUN apt-get update && apt-get -y upgrade \
  && apt-get install -y language-pack-en language-pack-en-base 

#RUN locale-gen en_US.UTF-8
#ENV LANG       en_US.UTF-8
#ENV LC_ALL     en_US.UTF-8
#RUN dpkg-reconfigure locales
RUN update-locale LANG="en_US.UTF-8"

RUN apt-get install -y openssh-server

RUN mkdir -p /var/run/sshd

RUN sed -ri "s/^PermitRootLogin\s+.*/PermitRootLogin yes/" /etc/ssh/sshd_config
# RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

WORKDIR /opt
ADD assets/cc-init.sh /opt/cc-init.sh

EXPOSE 22

CMD /opt/cc-init.sh; /usr/sbin/sshd -D
