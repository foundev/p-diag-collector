#!/usr/bin/env bash
# scripts/install.sh: install script for others to use, install.sh is a convention and why the name is different
orig_dir=$(pwd)
cd /tmp
curl -L https://github.com/foundev/p-diag-collector/main.zip -o main.zip
unzip main.zip
rm main.zip
cd p-diag-collector-main
./scripts/build
echo "copying binary to /usr/local/bin/p-diag-collector need sudo permissions to write"
sudo cp ./bin/p-diag-collector /usr/local/bin/
cd ..
rm -fr main
cd $orig_dir
