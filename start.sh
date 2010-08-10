#!/bin/sh
set -e -x
grep -n user_allow_other /etc/fuse.conf
mkdir -p ~/mnt/gmailfs-jasm
python src/gmailfs.py -o allow_root -d 9 /home/jasm/mnt/gmailfs-jasm/ 2>&1 | tee -a log.txt

