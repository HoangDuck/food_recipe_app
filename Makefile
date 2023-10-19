apk:
	fvm flutter clean
	fvm flutter pub get
	fvm flutter build apk --release --split-per-abi

release:
	fvm flutter clean
	fvm flutter pub get
	fvm flutter build apk --release --split-per-abi
	fvm flutter build appbundle

get:
	fvm flutter clean
	fvm flutter pub get

iphone:
	fvm flutter clean
	fvm flutter pub get
	cd ios && pod install