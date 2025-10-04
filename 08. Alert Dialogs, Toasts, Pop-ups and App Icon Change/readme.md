# Topics Covered

- Change App Name
- Change App Icons

---

## Change App Name in Android

Android → android/app/src/main/AndroidManifest.xml

```bash
    <application
    android:label="My App"
    android:icon="@mipmap/ic_launcher"
    ... >

```

## Change App Name in iOS

iOS → ios/Runner/Info.plist

```bash
    <key>CFBundleName</key>
    <string>My App</string>
```

---

## Change App Icon Manually

If you prefer to **manually set app icons** instead of using a plugin, follow these steps:

---

### Generate App Icons

- Use [App Icon Generator](https://appicon.co/) or any online tool to generate icons in all required sizes.
- Export the icon set for **Android** and **iOS**.

---

### Android Setup

    1. Navigate to: android/app/src/main/res/

    2. Replace the default `ic_launcher.png` and `ic_launcher_round.png` files inside each **mipmap-*** folder with your generated ones:
        - mipmap-mdpi
        - mipmap-hdpi
        - mipmap-xhdpi
        - mipmap-xxhdpi
        - mipmap-xxxhdpi

---

### iOS Setup

    1. Navigate to: ios/Runner/Assets.xcassets/AppIcon.appiconset/
    2. Replace the default icon set with your generated iOS icons.
    3. Make sure the `Contents.json` file is also included (it is generated along with icons from App Icon Generator).

---

### Clean & rebuild the app

```bash

flutter clean

flutter run

```
