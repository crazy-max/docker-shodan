FROM alpine:3.13
LABEL maintainer="CrazyMax"

ENV SHODAN_VERSION="1.24.0"

RUN apk --update --no-cache add \
    bash \
    curl \
    python3 \
    py3-pip \
    shadow \
    tzdata \
  && pip3 install shodan==${SHODAN_VERSION} --no-cache-dir \
  && addgroup shodan \
  && adduser -D -G shodan -s /bin/sh shodan \
  && rm -rf /var/cache/apk/* /tmp/*

WORKDIR /home/shodan
USER shodan

VOLUME [ "/home/shodan/.config/shodan" ]

ENTRYPOINT [ "shodan" ]
CMD [ "--help" ]
