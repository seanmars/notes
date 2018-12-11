#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"

RID="$( dotnet --info | egrep -e 'RID:' | egrep -o -e ':.*' | egrep -o -e '[^:]+' | egrep -o -e '(\w|\.|-)+' )"
OS="$( echo "$RID" | egrep -o -e .*- | egrep -o -e [^-]+ )"
ARCH="$( echo "$RID" | egrep -o -e -.* | egrep -o -e [^-]+ )"
REPOROOT="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

echo "Using RID: $RID"
echo "Using OS: $OS"
echo "Using ARCH: $ARCH"

CWD="$( pwd )"``

# Begin
cd "$REPOROOT"

# script here...

# End
cd "$CWD"
