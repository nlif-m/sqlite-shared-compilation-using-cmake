FROM debian:bookworm-slim as BUILDER

RUN apt update -y && \
    apt install gcc=4:12.2.0-3 cmake=3.25.1-1 -y && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .
WORKDIR /app/build
RUN cmake .. && \
    cmake --build . 
    
FROM scratch

WORKDIR /app
COPY --from=BUILDER /app/build/libsqlite.so .
