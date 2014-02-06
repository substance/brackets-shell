#!/bin/bash

# grunt-contrib-copy doesn't preserve permissions
# https://github.com/gruntjs/grunt/issues/615
chmod 755 debian/package-root/opt/Substance\ Composer/substance-reader
chmod 755 debian/package-root/opt/Substance\ Composer/Brackets
chmod 755 debian/package-root/opt/Substance\ Composer/Brackets-node
chmod 755 debian/package-root/DEBIAN/prerm
chmod 755 debian/package-root/DEBIAN/postrm
chmod 755 debian/package-root/DEBIAN/postinst

# set permissions on subdirectories
find debian -type d -exec chmod 755 {} \;

# delete old package
rm -f substance-composer.deb

fakeroot dpkg-deb --build debian/package-root
mv debian/package-root.deb substance-composer.deb
