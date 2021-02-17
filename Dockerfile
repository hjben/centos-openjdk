FROM hjben/centos-systemd:latest
MAINTAINER hjben <hj.ben.kim@gmail.com>

ENV JAVA_HOME /usr/lib/jvm/jre-11-openjdk
ENV PATH $PATH:$JAVA_HOME/bin
ENV TZ=Asia/Seoul

RUN dnf install -y java-11-openjdk

ENTRYPOINT ["/usr/sbin/init"]