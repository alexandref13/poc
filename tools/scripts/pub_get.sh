#!/bin/bash

echo "Pub get all packages"

# Executando script nos modulos

cd core
echo ""
echo "Cleaning core"
echo ""
flutter clean
echo ""
echo "Clean core finished"
echo ""
echo ""
echo "Pub getting core"
echo ""
flutter pub get
echo ""
echo "Pub getting in core finished"
echo ""

cd ../layouts
echo ""
echo "Cleaning layouts"
echo ""
flutter clean
echo ""
echo "Clean layouts finished"
echo ""
echo ""
echo "Pub getting layouts"
echo ""
flutter pub get
echo ""
echo "Pub getting in layouts finished"
echo ""

cd ../features
echo ""
echo "Cleaning features"
echo ""
flutter clean
echo ""
echo "Clean features finished"
echo ""
echo ""
echo "Pub getting features"
echo ""
flutter pub get
echo ""
echo "Pub getting in features finished"
echo ""

cd ../app
echo ""
echo "Cleaning app"
echo ""
flutter clean
echo ""
echo "Clean app finished"
echo ""
echo ""
echo "Pub getting app"
echo ""
flutter pub get
echo ""
echo "Pub getting in app finished"
echo ""

#cd shared/internationalization/.dart_tool/flutter_gen/gen_l10n/ && cp -r flutter_gen ../lib/flutter_gen/gen_l10n/

echo "Finished all tasks"