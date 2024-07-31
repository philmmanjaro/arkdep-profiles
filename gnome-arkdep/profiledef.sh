#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="manjaro-gnome-immutable"
iso_label="MANJARO_$(date +%Y%m)"
iso_publisher="Manjaro Linux <https://manjaro.org>"
iso_application="Manjaro Linux Live/Rescue CD"
iso_version="$(date +%Y.%m.%d)"
install_dir="manjaro"
buildmodes=('iso')
bootmodes=('uefi-ia32.systemd-boot.esp' 'uefi-x64.systemd-boot.esp'
           'uefi-ia32.systemd-boot.eltorito' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '19' '-b' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/etc/sudoers"]="0:0:400"
  ["/root"]="0:0:750"
)
