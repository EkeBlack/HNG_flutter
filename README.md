# Flutter GitHub Link App

This is a simple Flutter application with a **light purple background** and buttons that open a GitHub repository and a website in an external browser.

---

📱 Features

✅ Displays buttons to open a GitHub repository and a website  
✅ Uses **url_launcher** to open links  
✅ Works on both **Android & iOS**  
✅ Clean and modern UI with a **light purple theme**

---

🚀 Getting Started
**1️⃣ Install Flutter & Dependencies**
Make sure you have Flutter installed. Then, clone this repository and install dependencies:
```
git clone https://github.com/EkeBlack/hng_flutter.git
cd hng_flutter
flutter pub get
```

**2️⃣ Run the App**
To run the app on an emulator or a connected device:
```
flutter run
```

---

🛠️ Building the APK
To generate a **release APK**, run:
```
flutter build apk
```
The APK will be available at:
```
build/app/outputs/flutter-apk/app-release.apk
```

For an **all-architecture APK**, run:
```
flutter build apk --split-per-abi
```

For publishing on **Google Play Store**, generate an **AAB file**:
```
flutter build appbundle
```

---

## 🔗 Dependencies
This app uses the **url_launcher** package. Ensure it's installed:
```
flutter pub add url_launcher
```

---

## ⚙️ Configuration
For Android, update `AndroidManifest.xml` to allow opening links:
```
<queries>
    <intent>
        <action android:name="android.intent.action.VIEW"/>
        <data android:scheme="https"/>
    </intent>
</queries>
```

For iOS, add permissions in `ios/Runner/Info.plist`:
```
<key>LSApplicationQueriesSchemes</key>
<array>
    <string>https</string>
</array>
```

---

## 🎨 UI Preview
The app has a **light purple background** with buttons styled in deep purple and blue.


---
 📜 License
This project is licensed under the MIT License. Feel free to modify and use it as needed.

---

👨‍💻 Author
[Kurokami]
🔗 GitHub: [@EkeBlack](https://github.com/EkeBlack)  
🔗 Repository: [hng_flutter](https://github.com/EkeBlack/hng_flutter)

---

🚀 Happy Coding!

