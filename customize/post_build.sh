#!/bin/sh

FS=$TARGET_DIR  # The root filesystem
MDEV_CONF=$TARGET_DIR/etc/mdev.conf

# Remove network init script (networking is also disabled in the kernel)
rm -f $FS/etc/init.d/S40network

# Set up automount and autoplay
echo "# Automatically mount and play VFAT volumes" >> $MDEV_CONF
echo "sd[a-z].* root:disk 660 */lib/mdev/qemrdux/automount" >> $MDEV_CONF
