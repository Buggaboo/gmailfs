#!/bin/sh
kill $(ps axf | egrep "python.*gmailfs" | grep -v 'grep' | sed 's/^ \([0-9]\+\).*$/\1/')
