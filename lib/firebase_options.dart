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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAvbxV72G5sFdzrQryT6uBWfGHJBdu6Iiw',
    appId: '1:415170133911:android:de6fcfff46af92a8fb4ed2',
    messagingSenderId: '415170133911',
    projectId: 'online-consultation-c7bca',
    storageBucket: 'online-consultation-c7bca.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAmyc2RLdt4jO03DbOgxeVhCHvXjPgh0xI',
    appId: '1:415170133911:ios:059a2d09370ab854fb4ed2',
    messagingSenderId: '415170133911',
    projectId: 'online-consultation-c7bca',
    storageBucket: 'online-consultation-c7bca.appspot.com',
    iosClientId: '415170133911-2enq3qsmcumllllc74lon9k9l9i9h8ih.apps.googleusercontent.com',
    iosBundleId: 'com.exmple.onlineconsultation',
  );
}
