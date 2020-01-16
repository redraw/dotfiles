FROM debian
RUN apt update && apt install -y git curl sudo
RUN useradd -m tester && echo "tester:tester" | chpasswd && adduser tester sudo
USER tester
WORKDIR /home/tester
COPY . /home/tester
CMD /bin/bash
