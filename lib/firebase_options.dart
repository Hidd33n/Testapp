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
    apiKey: 'AIzaSyAocOosXcYtSdM6AfgRKrm6hJflwiffRXo',
    appId: '1:262298515294:web:4b5fd5397551b740b401cf',
    messagingSenderId: '262298515294',
    projectId: 'testapp-507a6',
    authDomain: 'testapp-507a6.firebaseapp.com',
    storageBucket: 'testapp-507a6.appspot.com',
    measurementId: 'G-RLFVCMW1EK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDSS1ki87uIGISTMHWFBri34u4K9Cbb0hE',
    appId: '1:262298515294:android:cb733796143fa334b401cf',
    messagingSenderId: '262298515294',
    projectId: 'testapp-507a6',
    storageBucket: 'testapp-507a6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBO629P7wXGQdB5lybllpjjly_WWyPJEf8',
    appId: '1:262298515294:ios:31f8bceb806b122cb401cf',
    messagingSenderId: '262298515294',
    projectId: 'testapp-507a6',
    storageBucket: 'testapp-507a6.appspot.com',
    iosClientId: '262298515294-prnjb1ggvks401b10j6grsq83r97l5o1.apps.googleusercontent.com',
    iosBundleId: 'com.g4g.testapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBO629P7wXGQdB5lybllpjjly_WWyPJEf8',
    appId: '1:262298515294:ios:12bd5de9b710511cb401cf',
    messagingSenderId: '262298515294',
    projectId: 'testapp-507a6',
    storageBucket: 'testapp-507a6.appspot.com',
    iosClientId: '262298515294-cqjrtplmgs0i4l7dv6obg4ahht8dd0p0.apps.googleusercontent.com',
    iosBundleId: 'com.g4g.testapp.RunnerTests',
  );
}