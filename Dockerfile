FROM jlesage/baseimage-gui:ubuntu-20.04-v4

RUN add-pkg --virtual apt-dependencies lsb-release gnupg2 shared-mime-info && \
    add-pkg --virtual insync-dependencies ca-certificates libgl1 libasound2 libegl1 libqt5gui5 && \
    add-pkg --virtual extras firefox stalonetray thunar insync-thunar && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C && \
    CODENAME="$(awk -F '=' '/VERSION_CODENAME/ { print $2 }' /etc/os-release)" && \
    echo "deb http://apt.insync.io/ubuntu $CODENAME non-free contrib" > /etc/apt/sources.list.d/insync.list && \
    add-pkg insync && \
    mkdir /data && \
    chown 1000:1000 /data

COPY rootfs/ /
RUN set-cont-env APP_NAME "insync" && set-cont-env APP_VERSION "$(insync version)"

ENV HOME=/config
VOLUME /config
VOLUME /data
