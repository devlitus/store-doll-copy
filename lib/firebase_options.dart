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
    apiKey: 'AIzaSyD5cqa-JkEyItvZT_W6myuf4KB6QZi15zo',
    appId: '1:641882597851:web:0ead30954f4d72689e9ffe',
    messagingSenderId: '641882597851',
    projectId: 'store-doll',
    authDomain: 'store-doll.firebaseapp.com',
    storageBucket: 'store-doll.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDbsOqRlTU3o_EbCLUNoHhwjdKLyqzGXSE',
    appId: '1:641882597851:android:32e38d281df7fa9a9e9ffe',
    messagingSenderId: '641882597851',
    projectId: 'store-doll',
    storageBucket: 'store-doll.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCRZgYzA4HH9NMaxdXD1I930Vi86sOerwI',
    appId: '1:641882597851:ios:2b80fab975c38b069e9ffe',
    messagingSenderId: '641882597851',
    projectId: 'store-doll',
    storageBucket: 'store-doll.appspot.com',
    iosClientId: '641882597851-ooueuo27uhccogusgb3bok2rl5mvfd1p.apps.googleusercontent.com',
    iosBundleId: 'com.example.storeDolls',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCRZgYzA4HH9NMaxdXD1I930Vi86sOerwI',
    appId: '1:641882597851:ios:2b80fab975c38b069e9ffe',
    messagingSenderId: '641882597851',
    projectId: 'store-doll',
    storageBucket: 'store-doll.appspot.com',
    iosClientId: '641882597851-ooueuo27uhccogusgb3bok2rl5mvfd1p.apps.googleusercontent.com',
    iosBundleId: 'com.example.storeDolls',
  );
}