FROM ubuntu:eoan

# Install dependencies
RUN apt-get update && apt-get -qy --no-install-recommends install \
    build-essential \
    ccache \
    clang \
    cmake \
    extra-cmake-modules \
    gettext \
    libboost-dev \
    libdbusmenu-qt5-dev \
    libkf5coreaddons-dev \
    libkf5notifications-dev \
    libkf5notifyconfig-dev \
    libkf5sonnet-dev \
    libkf5textwidgets-dev \
    libkf5widgetsaddons-dev \
    libkf5xmlgui-dev \
    libldap2-dev \
    libqca-qt5-2-dev \
    libssl-dev \
    ninja-build \
    pkg-config \
    qtmultimedia5-dev \
    qtscript5-dev \
    qtwebengine5-dev \
    qttools5-dev \
    qttools5-dev-tools \
    software-properties-common \
    zlib1g-dev

CMD "bash"

# Provide mountpoints for bind-mounts
VOLUME ["/src", "/build", "/ccache"]
