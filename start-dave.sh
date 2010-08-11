#!/bin/sh
set -e -x
grep -n user_allow_other /etc/fuse.conf
mkdir -p ~/mnt/gmailfs-dave
python dave_hansen/gmailfs.py -o allow_root -d 9 /home/jasm/mnt/gmailfs-dave/ 2>&1 | tee -a log-dave.txt

