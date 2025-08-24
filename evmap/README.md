# mobile

## Getting Started

Run `flutter pub get` to update your dependencies (as defined in `pubspec.yaml`)

### State management

The app uses Bloc for state managerment

- [Bloc state management](https://bloclibrary.dev/#/gettingstarted)

## Run

```
    flutter run
```

## Build

```
    flutter build apk
    flutter build ios
    flutter build appbundle 
```

## Generate

### Icon

```
    flutter pub run flutter_launcher_icons:main
```

### Model, api retrofit

```
    flutter pub run build_runner build
```

### Delete conflicting outputs

```
    flutter packages pub run build_runner build --delete-conflicting-outputs
```

OR

```
      flutter packages pub run build_runner build -d
```

### Gen image

```
    sh imagegen.sh
```

### Build filter (one directory special)

*Example lib\123\file.dart

```
    flutter packages pub run build_runner build --build-filter="lib/123/**"
```

