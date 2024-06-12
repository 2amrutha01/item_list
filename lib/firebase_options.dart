// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBapo2CAy7eddPNhKelIipxecyJyGIq7fI',
    appId: '1:912581835226:web:1286aa9a40c0713a5b28e3',
    messagingSenderId: '912581835226',
    projectId: 'example-13d8e',
    authDomain: 'example-13d8e.firebaseapp.com',
    storageBucket: 'example-13d8e.appspot.com',
    measurementId: 'G-ZWK47EDVXE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCW4dY0vT0bkdGgbt_D7O7pp3AB2pnzP-A',
    appId: '1:912581835226:android:fd0e71ef77b1d8315b28e3',
    messagingSenderId: '912581835226',
    projectId: 'example-13d8e',
    storageBucket: 'example-13d8e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCow1P2kpf7EnRSCJZEV65MpKSr9CVSGug',
    appId: '1:912581835226:ios:32f19c0a9ce45e7c5b28e3',
    messagingSenderId: '912581835226',
    projectId: 'example-13d8e',
    storageBucket: 'example-13d8e.appspot.com',
    iosBundleId: 'com.example.myApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCow1P2kpf7EnRSCJZEV65MpKSr9CVSGug',
    appId: '1:912581835226:ios:32f19c0a9ce45e7c5b28e3',
    messagingSenderId: '912581835226',
    projectId: 'example-13d8e',
    storageBucket: 'example-13d8e.appspot.com',
    iosBundleId: 'com.example.myApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBapo2CAy7eddPNhKelIipxecyJyGIq7fI',
    appId: '1:912581835226:web:45ac38e8fc6a71e45b28e3',
    messagingSenderId: '912581835226',
    projectId: 'example-13d8e',
    authDomain: 'example-13d8e.firebaseapp.com',
    storageBucket: 'example-13d8e.appspot.com',
    measurementId: 'G-85MT3YSJKJ',
  );
}