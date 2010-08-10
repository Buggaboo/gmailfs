#!/bin/sh
set -e -x
grep -n user_allow_other /etc/fuse.conf
mkdir -p ~/mnt/gmailfs-jasm
python src/gmailfs.py -o allow_root -d 9 /home/jasm/mnt/gmailfs-jasm/ | tee -a log.txt

