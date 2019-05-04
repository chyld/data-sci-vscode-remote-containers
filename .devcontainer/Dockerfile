FROM ubuntu:19.04

ENV DEBIAN_FRONTEND=noninteractive

COPY .devcontainer/settings.vscode.json /root/.vscode-remote/data/Machine/settings.json

RUN apt-get update                                                             \
    && apt-get install -y apt-utils software-properties-common build-essential \
    && add-apt-repository ppa:git-core/ppa                                     \
    && add-apt-repository ppa:jonathonf/vim                                    \
    && apt-get update                                                          \
    && apt-get install -y vim git wget unzip netcat neofetch tree htop procps


# RUN mkdir /workspace
# WORKDIR /workspace

# COPY .devcontainer/.bashrc /root
# COPY .devcontainer/.bash_colors /root
# COPY .devcontainer/.gitconfig /root
# COPY .devcontainer/environment.yml /workspace/
# RUN if [ -f "environment.yml" ]; then conda env update base -f environment.yml && rm environment.yml*; fi

RUN wget https://github.com/ogham/exa/releases/download/v0.8.0/exa-linux-x86_64-0.8.0.zip \
    && unzip exa-linux-x86_64-0.8.0.zip                                                   \
    && mv exa-linux-x86_64 /usr/bin/exa                                                   \
    && rm exa*                                                                            \
    && wget https://github.com/sharkdp/bat/releases/download/v0.10.0/bat_0.10.0_amd64.deb \
    && apt-get install ./bat_0.10.0_amd64.deb                                             \
    && rm bat*

EXPOSE 8000-8005

ENV DEBIAN_FRONTEND=dialog

RUN useradd -ms /bin/bash neptune
USER neptune
WORKDIR /home/neptune

