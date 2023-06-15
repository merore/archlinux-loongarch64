FROM debian:bullseye-slim

ADD . /archlinux

RUN apt update -y && \
    apt install --no-install-recommends -y \
    libfdt-dev \
    libpixman-1-dev \
    libgio2.0-cil-dev \
    libslirp-dev \
    libncursesw5-dev \
    libaio-dev

WORKDIR /archlinux

CMD ["/archlinux/start.sh"]
