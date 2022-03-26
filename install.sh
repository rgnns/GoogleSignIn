#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo "Usage: ./install.sh <destination>"
  exit 0
fi

if [ ! -d "GoogleSignIn.xcframework" ]; then
  echo "xcframework not generate. Run ./generate.sh first."
  exit 1
fi

DESTINATION=$1

cp BUILD "$DESTINATION"
cp LICENSE "$DESTINATION"
cp -r GoogleSignIn.xcframework "$DESTINATION"
