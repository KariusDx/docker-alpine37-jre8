FROM alpine:3.7

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

#  bash 4.4.19 (2018-02-06)
RUN apk add --no-cache bash=4.4.19-r1

# OpenJDK jre 8u151 (2017-10-17)
RUN apk add --no-cache openjdk8-jre=8.171.11-r0
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $JAVA_HOME/bin:$PATH
