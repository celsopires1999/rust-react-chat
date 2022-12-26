# Rust React Chat App

## How it works

### Initial Setup

```
*** run project on docker ***
docker-compose up --build

*** open another terminal: run the server ***
docker-compose exec app bash
cargo install diesel_cli --no-default-features --features "sqlite"
cd src
cargo check
diesel database setup
diesel migration run
cargo run

*** open another terminal: check server response within the container ***
docker-compose exec app bash
curl localhost:8080/rooms

*** open another terminal: check server response on the host environment ***
curl localhost:8080/rooms
```

![img](screenshot.png)
