#FROM alpine:latest
FROM ubuntu:18.04
#RUN apk add expect && expect -v
RUN apt update && apt install expect -y
#RUN mkdir -p /sxi
COPY . /sxi/
RUN chmod +x /sxi/docker-entrypoint.sh && cp /sxi/docker-entrypoint.sh /opt/docker-entrypoint.sh \
  && chmod +x /sxi/tp-expect.sh && ./sxi/tp-expect.sh && rm -rf /sxi && chown 989:989 -R /opt/
#RUN mkdir //.android && chown 989:989 -R //.android && chown 989:989 -R /opt/
#RUN chown 989:989 -R /opt/
ENV PATH="/opt/testproject/agent/bin/:${PATH}"
#RUN apk add --no-cache firefox 
RUN apt-get update \
    && apt-get install -y --no-install-recommends firefox \
    && rm -rf /var/lib/apt/lists/*
USER 989
ENV HOME=/tmp
WORKDIR /tmp
ENTRYPOINT ["/opt/docker-entrypoint.sh"]

