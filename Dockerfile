ARG SHODAN_VERSION=1.27.0

FROM alpine:3.15

ARG SHODAN_VERSION
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
  && mkdir -p /home/shodan/.config/shodan \
  && chown -R shodan. /home/shodan \
  && rm -rf /tmp/*

WORKDIR /home/shodan
USER shodan

VOLUME [ "/home/shodan/.config/shodan" ]

ENTRYPOINT [ "shodan" ]
CMD [ "--help" ]
