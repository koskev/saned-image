FROM debian:bookworm-slim

RUN apt-get update \
  && apt-get install -y sane-utils \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*


# Just enable everything. Just only expose it to the proper networks
RUN echo "0.0.0.0/0" > /etc/sane.d/saned.conf

# TODO: figure out permissions
CMD saned -l -b 0.0.0.0 -e


