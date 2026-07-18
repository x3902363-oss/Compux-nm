#!/bin/bash
# COMPUX - Tizim xususiyatlari (Windows'dagi "Mening kompyuterim > Xususiyatlar" o'rnida)

CPU=$(lscpu | grep "Model name:" | sed 's/Model name:\s*//')
CORES=$(nproc)
RAM_TOTAL=$(free -h --si | awk '/^Mem:/ {print $2}')
GPU=$(lspci | grep -i 'vga\|3d\|display' | head -1 | sed 's/^.*: //')
DISK=$(df -h / | awk 'NR==2 {print $3" / "$2" ("$5" band)"}')
HOSTNAME=$(hostnamectl --static 2>/dev/null || hostname)
ARCH=$(uname -m)
KERNEL=$(uname -r)
INSTALL_DATE=$(stat -c %y / 2>/dev/null | cut -d' ' -f1)

if [ "$ARCH" = "x86_64" ]; then
  BITNESS="64-bitli operatsion tizim"
else
  BITNESS="$ARCH operatsion tizim"
fi

zenity --info \
  --title="Tizim xususiyatlari" \
  --width=440 \
  --text="<b><span font='16' foreground='#00c3ff'>COMPUX</span></b>  —  1.0 ($ARCH)

<b>QURILMA</b>
Qurilma nomi:\t$HOSTNAME
Protsessor:\t$CPU ($CORES yadro)
Xotira (RAM):\t$RAM_TOTAL
Video karta:\t$GPU

<b>TIZIM</b>
Tizim turi:\t$BITNESS
Yadro versiyasi:\tLinux $KERNEL
Diskda ishlatilgan:\t$DISK
O'rnatilgan sana:\t$INSTALL_DATE

<b>SOTUVCHI</b>
COMPUX — Kompyuter ustaxona va sotuv markazi"
