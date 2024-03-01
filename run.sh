cd android
./gradlew app:assembRelease
adb install -r -d ../build/app/outputs/apk/release/app-release.apk