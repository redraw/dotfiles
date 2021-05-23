FROM debian
RUN apt-get update && apt-get install -y git curl sudo zsh
RUN useradd -m tester && echo "tester:tester" | chpasswd && adduser tester sudo
WORKDIR /home/tester
COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh
USER tester
ENTRYPOINT ["./entrypoint.sh"]
CMD ["/usr/bin/zsh"]
