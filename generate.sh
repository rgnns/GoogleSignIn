#!/usr/bin/env bash

xcodegen generate

rm -rf archives
rm -rf GoogleSignIn.xcframework

xcodebuild archive \
	-project GoogleSignIn.xcodeproj \
	-scheme GoogleSignIn \
	-destination "generic/platform=iOS" \
	-archivePath "archives/GoogleSignIn-iphoneos" \
	SKIP_INSTALL=NO \
	BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild archive \
	-project GoogleSignIn.xcodeproj \
	-scheme GoogleSignIn \
	-destination "generic/platform=iOS Simulator" \
	-archivePath "archives/GoogleSignIn-iphonesimulator" \
	SKIP_INSTALL=NO \
	BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild -create-xcframework \
	-framework "archives/GoogleSignIn-iphonesimulator.xcarchive/Products/Library/Frameworks/GoogleSignIn.framework" \
	-framework "archives/GoogleSignIn-iphoneos.xcarchive/Products/Library/Frameworks/GoogleSignIn.framework" \
	-output "GoogleSignIn.xcframework"
