# mi-debian

This repo contains live-build files and scripts to create an custom Debian 7 
ISO image with the necessary packages and sdc-vmtools installed for deploying 
on SmartOS and Joyent Public Cloud.

For more information on live-build see the [live-build manual](http://live-systems.org/manual/stable/html/live-manual.en.html)

## Requirements

In order to use this repo, you need to have the following:

 * SmartOS
 * A running Debian instance (physical or virtual) with spare disk space
 * sdc-vmtools
 
## Setup

Install live-build:

```
apt-get install live-build
```

Put the sdc-vmtools directory in the root of this repository.

## Configure

Modify the scripts in `auto\` and `config` depending on how you want your ISO configured. See the [live-build manual](http://live-systems.org/manual/stable/html/live-manual.en.html) for more information.


## Using

Once configured, run the following command:

```
./fullbuild.sh
```

Thsi will run copy teh required files from sdc-vmtools into `config/includes.chroot` and then will run `config/includes.chroot`

Once complete, your custom ISO (binary.iso) will be available in the root of this repository
