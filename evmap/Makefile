flutterexe = flutter
projectname = "EVMap"

allclean_do:
	@${flutterexe} clean
	@test -d ios/Pods && rm -rf ios/Pods  || echo no need to delete
	@test -d build/ios/ipa && rm -rf build/ios/ipa || echo no need to delete build/ios/ipa
	@${flutterexe} pub get
	@cd ios; pod install

clean:
	@${flutterexe} clean
	@${flutterexe} pub get
	@${flutterexe} pub run build_runner build --delete-conflicting-outputs

build_apk:
	@echo "Building apk for ${projectname}"
	@dart run build_runner build --delete-conflicting-outputs
	@${flutterexe} build apk --release --flavor prod
	chmod +x ./change_app_release_name.sh
	./change_app_release_name.sh ""
	@open build/app/outputs/flutter-apk

build_apk_dev:
	@echo "Building apk for ${projectname}"
	@${flutterexe} build apk --release --flavor dev -t lib/main_dev.dart
	chmod +x ./change_app_release_name.sh
	./change_app_release_name.sh dev
	@open build/app/outputs/flutter-apk

build_ipa_dev:
	@echo "Building ipa for ${projectname}"
	@dart run build_runner build --delete-conflicting-outputs
	@${flutterexe} build ipa --flavor dev -t lib/main_dev.dart

build_ipa:
	@echo "Building ipa for ${projectname}"
	@dart run build_runner build --delete-conflicting-outputs
	@${flutterexe} build ipa --flavor prod -t lib/main.dart

build_aab:
	@echo "Building aab for ${projectname}"
	@dart run build_runner build --delete-conflicting-outputs
	@${flutterexe} build appbundle --flavor prod --dart-define="enable_protect_screen_capture=true"
	chmod +x ./change_aab_release.sh
	./change_aab_release.sh ""

build_aab_dev:
	@echo "Building aab for ${projectname}"
	@dart run build_runner build --delete-conflicting-outputs
	@${flutterexe} build appbundle --flavor dev -t lib/main_dev.dart
	chmod +x ./change_aab_release.sh
	./change_aab_release.sh ""

build_app:
	make build_ipa_dev
	make build_apk_dev

