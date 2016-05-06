FROM java:8-jre-alpine
MAINTAINER Jim Davies

ENV DRILL_VERSION 1.6.0

RUN apk add --no-cache bash wget

RUN mkdir -p /opt/ && \
    wget -nv http://mirrors.ukfast.co.uk/sites/ftp.apache.org/drill/drill-$DRILL_VERSION/apache-drill-$DRILL_VERSION.tar.gz && \
    tar -zxvf apache-drill-$DRILL_VERSION.tar.gz -C /opt

WORKDIR /opt/apache-drill-$DRILL_VERSION/

ENTRYPOINT ["bin/drill-embedded"]
