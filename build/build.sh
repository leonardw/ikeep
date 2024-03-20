#!/bin/bash

cd "$(dirname "$0")"

SRC="../src/"
DIST="../dist/"

mkdir -p "$DIST"

grep -E '^app(name|ver)=' "${SRC}iKeep.app/Contents/MacOS/iKeep" > "${DIST}build.inf"

. "${DIST}build.inf"
ditto -c -k --sequesterRsrc --keepParent "${SRC}iKeep.app" "${DIST}${appname}-${appver}.zip"
