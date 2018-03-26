FROM alpine:3.7

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

#  bash 4.4.19 (2018-02-06)
RUN apk add --no-cache bash=4.4.19-r1

# biscuit 0.1.3 (2016-11-09)
RUN wget "https://github.com/dcoker/biscuit/releases/download/v0.1.3/biscuit-linux_amd64.tgz" \
 && tar -xzvf biscuit-linux_amd64.tgz \
 && rm -f biscuit-linux_amd64.tgz \
 && chmod +x biscuit \
 && mv biscuit /usr/local/bin/biscuit

# OpenJDK jre 8u151 (2017-10-17)
RUN apk add --no-cache openjdk8-jre=8.151.12-r0
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $JAVA_HOME/bin:$PATH
