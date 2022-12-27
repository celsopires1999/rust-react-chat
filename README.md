# Rust React Chat App

## How it works

### Initial Setup

#### Server

```
*** run project on docker ***
docker-compose up --build

*** open another terminal: run the server ***
docker-compose exec app bash
cargo install diesel_cli --no-default-features --features "sqlite"
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

#### Client

```
cd ui
npm install
npm run dev
```

## To be done

- participant_ids must be updated in a chat room (table rooms) when the user selects the chat room (new participant)

![img](screenshot.png)

## Running in production mode like

### Client

- assuming that you are in the project root

```
cd ui
npm run build
```

The files are written to app/static folder

### Server

- assuming that you are in the ui folder

```
cd ..
cargo build --release

./target/release/rust-react-chat
```

Server running at http://0.0.0.0:8080/
