FROM openjdk:8-jre-alpine

# Java config
ENV DRUID_VERSION   0.12.3

# Druid env variable
ENV DRUID_XMX           '-'
ENV DRUID_XMS           '-'
ENV DRUID_NEWSIZE       '-'
ENV DRUID_MAXNEWSIZE    '-'
ENV DRUID_HOSTNAME      '-'
ENV DRUID_PORT          '-'
ENV DRUID_LOGLEVEL      '-'
ENV DRUID_ZK_HOST       '-'

# http://mirrors.estointernet.in/apache/incubator/druid/0.13.0-incubating/apache-druid-0.13.0-incubating-src.tar.gz
RUN wget -q -O - \
    http://static.druid.io/artifacts/releases/druid-$DRUID_VERSION-bin.tar.gz \
    # http://static.druid.io/artifacts/releases/druid-$DRUID_VERSION-bin.tar.gz \
    | tar -xzf - -C /usr/share \
 && ln -s /usr/share/druid-$DRUID_VERSION /usr/share/druid \
 && mkdir -p /tmp/druid

COPY conf /usr/share/druid-$DRUID_VERSION/conf
COPY docker-entrypoint.sh /docker-entrypoint.sh

WORKDIR /usr/share/druid

ENTRYPOINT ["/docker-entrypoint.sh"]
