#!/bin/sh

set -e -x

kill $(`which ps` a | `which egrep` "python.*gmailfs" | grep -v 'grep' | sed 's/^ *\([0-9]\+\).*$/\1/')
