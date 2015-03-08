From  ubuntu:14.04
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
run apt-get update
run apt-get -y install build-essential
run apt-get -y install curl git subversion pkg-config
run apt-get -y install  zlib1g-dev libpcre3-dev  libglib2.0-dev libgtk2.0*
run apt-get -y install  libxtst-dev
run apt-get -y install  libncurses5-dev libssl-dev libnss3-dev libexpat-dev
run apt-get -y  install  libxss-dev libpci-dev
run  apt-get  -y   install libdbus-1-dev  libgconf2-dev libgnome-keyring-dev libudev-dev libpulse-dev
add webrtc-build-scripts /webrtc-build-scripts
workdir /webrtc-build-scripts
run  source android/build.sh  && install_dependencies && get_webrtc
ENV PATH $PATH:/webrtc-build-scripts/android/depot_tools

