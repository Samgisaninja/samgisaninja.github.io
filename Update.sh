#!/bin/bash
rm Packages
rm -f Packages.bz2
dpkg-scanpackages -m ./debs > Packages
./UpdateDepiction
cp Packages Packages2
bzip2 Packages
mv Packages2 Packages
