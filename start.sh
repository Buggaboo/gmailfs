#!/bin/sh
set -e -x
grep -n user_allow_other /etc/fuse.conf
mkdir -p ~/mnt/gmailfs-test5
python src/gmailfs.py -o allow_root -d 9 ~/mnt/gmailfs-test5/ 2>&1 | tee -a log.txt

