# Rust Github Action

Rust CI based upon [Github Actions](https://developer.github.com/actions/)

*What's inside the "box":*

* Rust 1.37.0
* Rustfmt
* Clippy
* Cargo Release
* cmake - Thanks @ [bwasty](https://github.com/bwasty)
* tarpaulin

# Usage

set env variable
```
CODECOV_TOKEN="xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
```

create a `.github/workflows/workflow.yml` file with the next contents

```
name: Test

on: [push]

jobs:
  test:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v1
    - uses: cualbondi/rust-action@master
    - name: Format
      run: cargo fmt -- --check
    - name: Clippy
      run: cargo clippy -- -D warnings -A clippy::ptr-arg
    - name: Tests
      run: cargo test --verbose
    - name: codecov
      run: taskset -c 0 cargo tarpaulin --out Xml && bash <(curl -s https://codecov.io/bash)
```
