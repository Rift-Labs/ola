

Configure the repo and build the release tarball:

    autoreconf -i
    ./configure --enable-python-libs
    make dist
    
(make script executable chmod +x RIFT_LABS_RELEASE.sh)

Then run the RIFT_LABS_RELEASE script to create the release tarball:

    ./RIFT_LABS_RELEASE.sh

It will open the file /debian/rules where you will need to add:

    override_dh_auto_test: