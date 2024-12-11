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
    apiKey: 'AIzaSyAwSTJ8r5DtJvzSIx94gXCEP3x76_E2Ng0',
    appId: '1:651632046612:web:bc06a6305deea301c0ed01',
    messagingSenderId: '651632046612',
    projectId: 'atw-task-app',
    authDomain: 'atw-task-app.firebaseapp.com',
    storageBucket: 'atw-task-app.firebasestorage.app',
    measurementId: 'G-PLW9CTZT2F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAFYcAMd8r-JfFttZ4-C7iAfN3ukoNPvWc',
    appId: '1:651632046612:android:7e869df9beee9aacc0ed01',
    messagingSenderId: '651632046612',
    projectId: 'atw-task-app',
    storageBucket: 'atw-task-app.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAHBKi8eW16FYrWKhg5RiBJ5pSogLN9gfQ',
    appId: '1:651632046612:ios:7d74fd8a55dd8ae2c0ed01',
    messagingSenderId: '651632046612',
    projectId: 'atw-task-app',
    storageBucket: 'atw-task-app.firebasestorage.app',
    iosBundleId: 'com.example.atwTask1App',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAHBKi8eW16FYrWKhg5RiBJ5pSogLN9gfQ',
    appId: '1:651632046612:ios:7d74fd8a55dd8ae2c0ed01',
    messagingSenderId: '651632046612',
    projectId: 'atw-task-app',
    storageBucket: 'atw-task-app.firebasestorage.app',
    iosBundleId: 'com.example.atwTask1App',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAwSTJ8r5DtJvzSIx94gXCEP3x76_E2Ng0',
    appId: '1:651632046612:web:f93320897a6d69eac0ed01',
    messagingSenderId: '651632046612',
    projectId: 'atw-task-app',
    authDomain: 'atw-task-app.firebaseapp.com',
    storageBucket: 'atw-task-app.firebasestorage.app',
    measurementId: 'G-J5TGPGZPHE',
  );
}
