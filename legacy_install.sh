#!/bin/bash

echo "  *********************************************************************************"
echo "  *                                                                               *"
echo "  *                             Welcome to COPSI!                                 *"
echo "  *                                                                               *"
echo "  *********************************************************************************"

export version=$1

if [ -z "$1" ]; then
    echo "[WARNING] No verions supplied: setting default value to SNAPSHOT"
    version="SNAPSHOT"
fi


echo "Remove symbolic link..."
echo "rm /data/copsi"
rm /data/copsi

echo "Create directory for release $version..."

echo "mkdir -p /data/copsi_${version} "
mkdir -p /data/copsi_${version}

echo "Create create new symbolic link..."

echo "ln -s  /data/copsi_${version} /data/copsi"
ln -s  /data/copsi_${version} /data/copsi

echo "Copy the configuration files in the proper folder..."

echo "cp -R data/copsi/* /data/copsi_${version}/"
cp -R data/copsi/* /data/copsi_${version}/


echo "COPSI environment ready!"
