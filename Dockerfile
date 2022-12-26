FROM rust:1.66.0

RUN useradd -m -u 1000 rust

USER rust

WORKDIR /home/rust/app

EXPOSE 8080

CMD ["tail", "-f", "/dev/null"]
