#!/bin/bash
declare -A osInfo;
osInfo[/etc/debian_version]="apt-get"
osInfo[/etc/alpine-release]="apk"
osInfo[/etc/centos-release]="yum"
osInfo[/etc/fedora-release]="dnf"
osInfo[/etc/arch-release]="pacman"

for f in ${!osInfo[@]}
do
    if [[ -f $f ]];then
        package_manager=${osInfo[$f]}
    fi
done

echo ${package_manager}
