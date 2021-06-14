#FROM alpine:latest
FROM ubuntu:18.04
#RUN apk add expect && expect -v
RUN apt update && apt install expect -y \
    && apt-get install -y --no-install-recommends firefox \
    && rm -rf /var/lib/apt/lists/*
COPY . /sxi/
RUN chmod +x /sxi/docker-entrypoint.sh && cp /sxi/docker-entrypoint.sh /opt/docker-entrypoint.sh \
  && chmod +x /sxi/tp-expect.sh && ./sxi/tp-expect.sh && rm -rf /sxi 
  #&& chown 989:989 -R /opt/ 
ENV PATH="/opt/testproject/agent/bin/:${PATH}"
#USER 989
ENV HOME=/tmp
WORKDIR /tmp
ENTRYPOINT ["/opt/docker-entrypoint.sh"]

