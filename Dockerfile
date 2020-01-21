FROM debian
RUN apt update && apt install -y git curl sudo
RUN useradd -m tester && echo "tester:tester" | chpasswd && adduser tester sudo
USER tester
WORKDIR /home/tester
RUN curl https://gist.githubusercontent.com/redraw/e0f11412c2983364e27b1a79299307c2/raw/dotfiles.sh | bash
CMD /bin/bash
