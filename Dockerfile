# Base image: Ubuntu 22.04 LTS (stable and compatible with embedded toolchains)
FROM ubuntu:22.04

# Set working directory inside the container (matches project mount point)
WORKDIR /workspace

# Set environment variable to avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install essential build tools, RISC-V cross-compilation toolchain, and other dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc-riscv64-linux-gnu \
    g++-riscv64-linux-gnu \
    binutils-riscv64-linux-gnu \
    make \
    cmake \
    git \
    wget \
    curl \
    vim \
    bash \
    device-tree-compiler \
    python3 \
    python3-pip \
    libssl-dev \
    flex \
    bison \
    bc \
    libncurses5-dev \
    libncursesw5-dev \
    zlib1g-dev \
    libreadline-dev \
    libsdl2-dev \
    libtool \
    autoconf \
    automake \
    pkg-config \
    libelf-dev \
    xz-utils \
    rsync \
    cpio \
    && rm -rf /var/lib/apt/lists/*

# Configure colored bash prompt
RUN echo 'export PS1="\[\033[1;31m\]Penglai-ZGC-TEE Container\[\033[0m\]:\[\033[4;32m\]\w\[\033[0m\]\\$ "' >> /root/.bashrc

# Set default shell to bash
CMD ["/bin/bash"]
