#!/bin/sh

set -e -x

kill $(`which ps ` ax | `which egrep` "python.*gmailfs" | grep -v 'grep' | sed 's/^ *\([0-9]\+\).*$/\1/')
