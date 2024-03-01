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
    apiKey: 'AIzaSyB0HnB_n01zzrHVR62E3VmQv0Hx4FeX3rY',
    appId: '1:429511606034:web:e3317d381933303df0fdcb',
    messagingSenderId: '429511606034',
    projectId: 'tourism-e0055',
    authDomain: 'tourism-e0055.firebaseapp.com',
    storageBucket: 'tourism-e0055.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCHyiCylngc0NhGs426naVPfFdjK3XJCNs',
    appId: '1:429511606034:android:b71f37c7a656293df0fdcb',
    messagingSenderId: '429511606034',
    projectId: 'tourism-e0055',
    storageBucket: 'tourism-e0055.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDzn-2DhCcf_JCfzVN_67rqiK-_366Is8w',
    appId: '1:429511606034:ios:824897b1e3e34f1df0fdcb',
    messagingSenderId: '429511606034',
    projectId: 'tourism-e0055',
    storageBucket: 'tourism-e0055.appspot.com',
    iosBundleId: 'com.example.travelScope',
  );
}