From  ubuntu:14.04
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
run apt-get -y install curl git subversion
add webrtc-build-scripts /webrtc-build-scripts
workdir /webrtc-build-scripts
run  source android/build.sh  && install_dependencies && get_webrtc


