dpkg-scanpackages -m ./debs > Packages
rm -f Packages.bz2
cp Packages Packages2
bzip2 Packages
mv Packages2 Packages