FROM rust:1.66.0

WORKDIR /usr/src/app

CMD ["tail", "-f", "/dev/null"]
