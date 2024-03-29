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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCiHtYb5E0JG0VLprv26iyyTnTnEgPbJxQ',
    appId: '1:570891467876:web:676503fdefea646c5db371',
    messagingSenderId: '570891467876',
    projectId: 'yatra-39c0f',
    authDomain: 'yatra-39c0f.firebaseapp.com',
    storageBucket: 'yatra-39c0f.appspot.com',
    measurementId: 'G-C0G5QXHQC7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAoaYDxAkhtxsKPby2BT-_ruVK1Nr0wPa8',
    appId: '1:570891467876:android:6ab375f870b34d4c5db371',
    messagingSenderId: '570891467876',
    projectId: 'yatra-39c0f',
    storageBucket: 'yatra-39c0f.appspot.com',
  );
}
