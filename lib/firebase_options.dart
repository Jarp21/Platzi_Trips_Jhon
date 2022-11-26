import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD12QQUQxHS7ECt5YqiVBcH9lQ4yR9s7sQ',
    appId: '1:722341883692:web:64366edcd4a75dad9ec689',
    messagingSenderId: '722341883692',
    projectId: 'platzitrips-f8eb6',
    authDomain: 'platzitrips-f8eb6.firebaseapp.com',
    storageBucket: 'platzitrips-f8eb6.appspot.com',
    measurementId: 'G-GX3ZTJRH34',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyByD8FqO2nf1e5675AVHFwrVhKD6p4Lv64',
    appId: '1:722341883692:android:da91e9361a11fb599ec689',
    messagingSenderId: '722341883692',
    projectId: 'platzitrips-f8eb6',
    storageBucket: 'platzitrips-f8eb6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBrfwmgHuCaImhuPsDnRye5PogYtlUP6jo',
    appId: '1:722341883692:ios:4f64723a2b99c5bc9ec689',
    messagingSenderId: '722341883692',
    projectId: 'platzitrips-f8eb6',
    storageBucket: 'platzitrips-f8eb6.appspot.com',
    iosClientId: '722341883692-ocls6c51su5r8rt4pnf71tq5nkedoq1m.apps.googleusercontent.com',
    iosBundleId: 'com.example.platziTrips',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBrfwmgHuCaImhuPsDnRye5PogYtlUP6jo',
    appId: '1:722341883692:ios:4f64723a2b99c5bc9ec689',
    messagingSenderId: '722341883692',
    projectId: 'platzitrips-f8eb6',
    storageBucket: 'platzitrips-f8eb6.appspot.com',
    iosClientId: '722341883692-ocls6c51su5r8rt4pnf71tq5nkedoq1m.apps.googleusercontent.com',
    iosBundleId: 'com.example.platziTrips',
  );
}


