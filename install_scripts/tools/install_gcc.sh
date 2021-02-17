#! /bin/bash

# Install gcc from source

############################ Settings ################################
name="gcc"
repo="https://github.com/gcc-mirror/gcc.git"
branch="master"
######################################################################

echo "Installing ${name}"

clone_dir="/tmp/${name}"
git clone -b ${branch} ${repo} ${clone_dir}

##################### Modify This Code As Necessary ##################
mkdir /tmp/gcc-build
cd /tmp/gcc-build
/tmp/gcc/configure --disable-multilib
make -j4 install
######################################################################

rm -rf ${clone_dir}
