FROM rockylinux:8.6

# 開発ツールグループをインストール
RUN dnf groupinstall -y "Development Tools" && \
    dnf install -y \
        cmake \
        ninja-build \
        pkg-config \
        gdb \
        valgrind \
        clang \
        llvm \
        make \
        autoconf \
        automake \
        libtool \
        wget \
        curl \
        git \
        vim \
    && dnf clean all

WORKDIR /workspace

CMD ["/bin/bash"]
