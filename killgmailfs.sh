#!/bin/sh

set -e -x

kill $(`which ps` axf | egrep "python.*gmailfs" | grep -v 'grep' | sed 's/^ *\([0-9]\+\).*$/\1/')
