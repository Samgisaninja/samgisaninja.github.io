#!/bin/bash
rm Packages
dpkg-scanpackages -m ./debs > Packages
rm -f Packages.bz2
./UpdateDepiction
cp Packages Packages2
bzip2 Packages
mv Packages2 Packages
