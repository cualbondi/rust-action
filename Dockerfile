FROM cualbondi/rust:1.37.0-0

LABEL "com.github.actions.name"="Rust Action"
LABEL "com.github.actions.description"="Rust CI precompiled docker image"
LABEL "com.github.actions.icon"="play-circle"
LABEL "com.github.actions.color"="gray-dark"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
