# Starting from the official Elixir 1.3 image:
# https://hub.docker.com/_/elixir/
FROM elixir:1.3
MAINTAINER Efren Fuentes <efrenfuentes@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

# Install hex
RUN mix local.hex --force

# Install rebar
RUN mix local.rebar --force

# Set /app as workdir
WORKDIR /app
