#!/usr/bin/env bash

set -e


if [[ ! -d sdc-vmtools ]] ; then
  echo "sdc-vmtools  not found!"
  exit 1
fi

includes=config/includes.chroot
sdcvmtools=sdc-vmtools/src/linux

echo "Syncing etc, lib, and usr directories to ${includes}..."
# Using rsync to ensure deleted files from sdc-vmtools repo are removed
rsync -aq --delete --exclude=install-tools.sh ./${sdcvmtools}/ ${includes}/

echo "Starting full build..."
echo ""

lb clean; lb config; lb build
