FROM rust:1.37.0

RUN apt-get update && apt-get install -y \
        cmake \
        libssl-dev \
        pkg-config \
        zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* \
    && rustup component add clippy-preview \
    && rustup component add rustfmt-preview \
    && cargo install cargo-release \
    && cargo install cargo-tarpaulin
