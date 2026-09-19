#!/bin/bash
#make by G.R.H

progdir=$(dirname "$0")
G_DIR="/mnt/mod/ctrl/configs"
G_CONF="${G_DIR}/system.cfg"
if [ ! -d ${G_DIR} ]
then
    mkdir -p ${G_DIR}
fi
touch ${G_CONF}
sed -i '/global.shader=/d' "${G_CONF}"
echo "global.shader=1" >> "${G_CONF}"
rm -f $progdir/SHADERS*
cp -f $progdir/shader/SHADERS-AUTO.sh $progdir/
sync
