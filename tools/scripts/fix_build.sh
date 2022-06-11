#!/bin/bash

cd app
echo "Executting App"
//flutter clean
cd ios
rm -Rf Pods
rm -Rf .symlinks
rm -Rf Flutter/Flutter.framework
rm -Rf Flutter/Flutter.podspec
pod install
cd -
cd macos
rm -Rf Pods
rm -Rf .symlinks
rm -Rf Flutter/Flutter.framework
rm -Rf Flutter/Flutter.podspec
pod install
cd -
//flutter pub get