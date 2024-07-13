# Imagen base
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Instalar dependencias necesarias para compilar Neovim
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    ninja-build \
    gettext \
    libtool \
    libtool-bin \
    autoconf \
    automake \
    pkg-config \
    unzip \
    curl \
    git \
    luarocks

# Descargar y compilar Neovim desde el código fuente
RUN git clone https://github.com/neovim/neovim
WORKDIR /neovim
RUN git checkout stable
RUN make CMAKE_BUILD_TYPE=RelWithDebInfo
RUN make install

# Instalar StyLua
RUN luarocks install stylua
