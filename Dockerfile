FROM debian:latest

RUN apt-get update && \
	apt-get install -y gcc make cmake

COPY lib/c /test/lib/c

WORKDIR /test/lib/c

RUN mkdir build && \
	cmake -S . -B build && \
	cmake --build build

CMD [ "build/test" ]