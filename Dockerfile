FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
  genisoimage=9:1.1.11-3.5 && \
  rm -rf /var/lib/apt/lists/*;

WORKDIR /data

ENTRYPOINT  ["genisoimage"]
CMD ["-output", "/artifact/seed.iso", "-volid", "cidata", "-joliet", "-rock", "user-data", "meta-data", "network-config"]

