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

route:
	fvm flutter pub run build_runner watch --delete-conflicting-outputs

freezed:
	fvm dart run build_runner build