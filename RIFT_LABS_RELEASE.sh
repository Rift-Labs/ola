

rm -rf /tmp/ola*
cp ola-0.10.9.tar.gz /tmp/ola_0.10.9.orig.tar.gz
cd /tmp
tar -zxf ola_0.10.9.orig.tar.gz
cd ola-0.10.9
nano debian/rules
debuild

