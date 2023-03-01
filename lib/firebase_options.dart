// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
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
    apiKey: 'AIzaSyCmSXR0uqjHYD75YgwUOe4J_EDSfida6Zs',
    appId: '1:410079293980:web:ef95b0cc09b895c8aaa5d9',
    messagingSenderId: '410079293980',
    projectId: 'loginfirebase-4e349',
    authDomain: 'loginfirebase-4e349.firebaseapp.com',
    databaseURL: 'https://loginfirebase-4e349-default-rtdb.firebaseio.com',
    storageBucket: 'loginfirebase-4e349.appspot.com',
    measurementId: 'G-SEPNG31MCM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCyXAiOhA2pm8spX2C-1TRevUfJUKPev8Y',
    appId: '1:410079293980:android:c4aaff0dacd473ebaaa5d9',
    messagingSenderId: '410079293980',
    projectId: 'loginfirebase-4e349',
    databaseURL: 'https://loginfirebase-4e349-default-rtdb.firebaseio.com',
    storageBucket: 'loginfirebase-4e349.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCf3dCwyBvYE_lQ73cjPL8Q1-O63DpuBdY',
    appId: '1:410079293980:ios:cb09cb6d2dfc7d21aaa5d9',
    messagingSenderId: '410079293980',
    projectId: 'loginfirebase-4e349',
    databaseURL: 'https://loginfirebase-4e349-default-rtdb.firebaseio.com',
    storageBucket: 'loginfirebase-4e349.appspot.com',
    iosClientId: '410079293980-9p4srp8a98l8p095h82v9lo7rjm5o640.apps.googleusercontent.com',
    iosBundleId: 'com.example.vritant',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCf3dCwyBvYE_lQ73cjPL8Q1-O63DpuBdY',
    appId: '1:410079293980:ios:cb09cb6d2dfc7d21aaa5d9',
    messagingSenderId: '410079293980',
    projectId: 'loginfirebase-4e349',
    databaseURL: 'https://loginfirebase-4e349-default-rtdb.firebaseio.com',
    storageBucket: 'loginfirebase-4e349.appspot.com',
    iosClientId: '410079293980-9p4srp8a98l8p095h82v9lo7rjm5o640.apps.googleusercontent.com',
    iosBundleId: 'com.example.vritant',
  );
}
