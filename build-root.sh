#!/bin/bash
HERE=$(pwd)
apt-get install ed
set -x
kpsexpand '$TEXMFLOCAL'
kpsexpand '$TEXMFHOME'
set +x
#echo "Press ENTER to go on"
#read r
set -x
#cd FontPro 
git status
#git reset --hard origin
#git clean -f -d
./scripts/clean
git status
./scripts/makeall MyriadPro
./scripts/install /usr/local/share/texmf y
mktexlsr
#updmap --enable Map=MyriadPro.map
updmap-sys --enable Map=MyriadPro.map
set +x
cd ${HEFRE}
