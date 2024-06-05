

Configure the repo and build the release tarball:

    autoreconf -i
    ./configure --enable-python-libs --disable-all-plugins --disable-rdm-tests --enable-artnet --enable-usbpro
    make dist
    
(make script executable chmod +x RIFT_LABS_RELEASE.sh)

Then run the RIFT_LABS_RELEASE script to create the release tarball:

    ./RIFT_LABS_RELEASE.sh



Attempt at cross compiling:

    rm -rf /tmp/ola*
    cp ola-0.10.9.tar.gz /tmp/ola_0.10.9.orig.tar.gz
    cd /tmp
    tar -zxf ola_0.10.9.orig.tar.gz
    cd ola-0.10.9
    echo "override_dh_auto_test:" >> debian/rules

    export DEB_BUILD_ARCH=armhf
    export CROSS_COMPILE=arm-linux-gnueabihf-
    export CC=${CROSS_COMPILE}gcc

    echo "export DEB_BUILD_ARCH=armhf" >> debian/rules
    echo "export CROSS_COMPILE=arm-linux-gnueabihf-" >> debian/rules
    echo "export CC=${CROSS_COMPILE}gcc" >> debian/rules

    DEB_BUILD_OPTIONS=nocheck debuild -aarmhf -us -uc -d
