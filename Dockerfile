FROM ubuntu:latest

RUN apt update && \
    apt install -y fortune cowsay netcat-openbsd && \
    ln -s /usr/games/cowsay /usr/bin/cowsay && \
    ln -s /usr/games/fortune /usr/bin/fortune

WORKDIR /app

COPY . /app

RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]
