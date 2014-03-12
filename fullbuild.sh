#!/bin/sh

set -e

# Get's latest sdc-vmtools from git, then runs a complete build:
# lb clean; lb config; lb build


if [ ! -d sdc-vmtools ] ; then
  echo "sdc-vmtools git repo not found, cloning..."
  git clone git@git.joyent.com:sdc-vmtools.git
fi

echo "Updating sdc-vmtools git repo"
cd sdc-vmtools
git pull
cd ..


includes=config/chroot_local-includes/
sdcvmtools=sdc-vmtools/src/linux
echo "Copying etc, lib, and usr directories to ${includes}..."
# Using rsync to ensure deleted files from sdc-vmtools repo are removed
rsync -aq --delete --exclude=install-tools.sh ./${sdcvmtools}/ ${includes}/

echo "Starting full build..."
echo ""

lb clean; lb config; lb build
