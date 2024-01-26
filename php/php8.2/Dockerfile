FROM ubuntu:22.04 as base

ARG DEBIAN_FRONTEND=noninteractive

COPY setup.sh setup.sh

RUN chmod +x setup.sh
RUN ./setup-php.sh

