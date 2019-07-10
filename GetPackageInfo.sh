#!/bin/bash
for file in ./debs/*
do
  /usr/local/bin/dpkg-deb -I "$file"
  echo Filename: $file
  echo "AUTOREPO_NEXTPACKAGE"
  sleep 0.1
done
sleep 10