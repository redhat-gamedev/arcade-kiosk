FROM registry.access.redhat.com/ubi9/nodejs-20:latest

EXPOSE 1234

user root

RUN dnf update -y && dnf clean all

# install the clh-arcade web launcher
RUN npm install -g clh-arcade

USER default

COPY --chown=default clh-arcade-games clh-arcade-games
COPY --chown=default start.sh start.sh

# start script
CMD ./start.sh