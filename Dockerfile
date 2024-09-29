# Qbittorrent CLI
# https://github.com/fedarovich/qbittorrent-cli/wiki/Getting-Started
# https://github.com/fedarovich/qbittorrent-cli/wiki/qbt-server-settings-connection
FROM debian:11
RUN apt-get update
RUN apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gpg

RUN curl -L 'https://dl.cloudsmith.io/public/qbittorrent-cli/qbittorrent-cli/gpg.F8756541ADDA2B7D.key' | apt-key add -

RUN curl -L https://repos.fedarovich.com/debian/bullseye/qbittorrent-cli.list -o /etc/apt/sources.list.d/qbittorrent-cli.list
RUN apt-get update
RUN apt install qbittorrent-cli -y