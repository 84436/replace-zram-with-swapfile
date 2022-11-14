#!/system/bin/sh
[ -f /data/swap ] && \
    /system/bin/swapoff /dev/block/zram0 && \
    /system/bin/swapon /data/swap
