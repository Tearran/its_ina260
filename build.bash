#!/bin/bash


#File location and name
#SRC="${BASH_SOURCE[0]}"
src="$(dirname ${BASH_SOURCE[0]})"
cd $src || ( echo "faild build" && exit )
echo $src
buildName="${PWD##*/}"
echo $buildName
execName="${PWD##*/}.bin"

echo $execName
installedName=$( echo ${buildName} | sed 's|_|-|g' )
echo $installedName

## compress the contents to a zip
#[ ! -e /usr/bin/zip ] && sudo apt update && sudo apt install zip
#
[ -e /usr/bin/zip ] && zip -r ../$execName.zip ./* 
#
cd ..
#
## set the interprater
echo '#!/usr/bin/env python3' | cat - $execName.zip > $installedName
#
## install the exicutible
[ ! -d ~/.local/bin/ ] && mkdir ~/.local/bin/
#
[ -d ~/.local/bin/ ] && install -b -v $installedName ~/.local/bin/
