#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
#-------------------------------------------------------------------------------------------------------------

FROM continuumio/miniconda3

# Copy default endpoint specific user settings overrides into container to specify Python path
COPY .devcontainer/settings.vscode.json /root/.vscode-remote/data/Machine/settings.json

# Install git, process tools
RUN apt-get update && apt-get -y install software-properties-common git procps build-essential htop tree vim neofetch netcat unzip

RUN mkdir /workspace
WORKDIR /workspace

# Install Python dependencies from requirements.txt if it exists
COPY .devcontainer/.bashrc /root
COPY .devcontainer/.bash_colors /root
COPY .devcontainer/.gitconfig /root
COPY .devcontainer/environment.yml /workspace/
RUN if [ -f "environment.yml" ]; then conda env update base -f environment.yml && rm environment.yml*; fi

RUN wget https://github.com/ogham/exa/releases/download/v0.8.0/exa-linux-x86_64-0.8.0.zip \
    && unzip exa-linux-x86_64-0.8.0.zip \
    && mv exa-linux-x86_64 /usr/bin/exa \
    && rm exa*

RUN wget https://github.com/sharkdp/bat/releases/download/v0.10.0/bat_0.10.0_amd64.deb \
    && apt-get install ./bat_0.10.0_amd64.deb \
    && rm bat*

# Clean up
RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 8000-8005
