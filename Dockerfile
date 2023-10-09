FROM debian:bookworm-slim

RUN apt-get update \
  && apt-get install -y sane-utils \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

CMD saned -l -b 0.0.0.0


