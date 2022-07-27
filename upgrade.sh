#!/usr/bin/env bash

if [ $# -eq 0 ]; then
	echo "No version supplied."
	echo "Usage: ./upgrade.sh <version>"
	exit 0
fi

GSIGNIN_VERSION=$1

if [[ ! "$GSIGNIN_VERSION" =~ [0-9]+\.[0-9]+\.[0-9]+ ]]; then
	echo "Provided version does not have correct format."
	echo "Version format example: 6.2.2"
	exit 1
fi

rm -rf GoogleSignIn

git clone --depth 1 --branch $GSIGNIN_VERSION https://github.com/google/GoogleSignIn-iOS.git
mv GoogleSignIn-iOS/GoogleSignIn GoogleSignIn
mv GoogleSignIn-iOS/LICENSE .
cp Info.plist GoogleSignIn/
cp module.modulemap GoogleSignIn/Sources/Public/GoogleSignIn/
rm -rf GoogleSignIn-iOS
