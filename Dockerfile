# docker build -t <사용할 이미지 이름> <Dockerfile이 존재하는 경로>
FROM        ubuntu:16.04
MAINTAINER  archysp11@gmail.com

RUN         apt-get -y update
RUN         apt-get install -y python-pip
RUN         apt-get install -y git vim

# pyenv
RUN         apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils
RUN         curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
ENV         PATH /root/.pyenv/bin:$PATH

RUN         pyenv install 3.6.1

RUN         apt-get -y install zsh
RUN         wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
RUN         chsh -s /usr/bin/zsh

RUN         echo 'export PATH="/root/.pyenv/bin:$PATH"' >> ~/.zshrc
RUN         echo 'eval "$(pyenv init -)"' >> ~/.zshrc
RUN         echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc