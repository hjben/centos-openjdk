FROM hjben/centos-systemd:latest
MAINTAINER hjben <hj.ben.kim@gmail.com>

ENV JAVA_VERSION 11
ENV JAVA_HOME /usr/lib/jvm/jre-$JAVA_VERSION-openjdk
ENV PATH $PATH:$JAVA_HOME/bin
ENV TZ=Asia/Seoul

RUN dnf install -y java-$JAVA_VERSION-openjdk

ENTRYPOINT ["/usr/sbin/init"]