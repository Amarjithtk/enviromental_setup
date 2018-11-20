#!/bin/bash

sudo apt update
sudo apt upgrade

sudo apt-get install git-core gnupg flex bison gperf build-essential zip curl \
zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev \
x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils \
xsltproc bc unzip

curl https://storage.googleapis.com/git-repo-downloads/repo > repo
chmod a+x repo
sudo install repo /usr/local/bin
rm repo
cd ~
mkdir android
printf " \n what you want to name the build folder ? : "
read name
mkdir ~/android/$name
cd ~/android/$name

printf " \n what is your email address ? : "
read email
printf " \n what is your name ? : "
read user

git config --global user.name "$user"
git config --global user.email "$email"

git clone https://github.com/Amarjithtk/SF_uploader.git
git clone https://github.com/Amarjithtk/tree_cloner.git && . tree_cloner/script.sh
