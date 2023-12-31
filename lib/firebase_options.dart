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
    apiKey: 'AIzaSyCJBBi5VAZbt3pkzKlhFce7rVX8kVW4GBI',
    appId: '1:980826776293:web:d42132fca79f4c54e6aa0c',
    messagingSenderId: '980826776293',
    projectId: 'trycikol',
    authDomain: 'trycikol.firebaseapp.com',
    storageBucket: 'trycikol.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBlSYgKK7eAdjkQR51AMMJdO2MdRU-alhc',
    appId: '1:980826776293:android:34ebde49ab5fe044e6aa0c',
    messagingSenderId: '980826776293',
    projectId: 'trycikol',
    storageBucket: 'trycikol.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDR2l4Z4z0Yi6z5M_Sczn-teS-obnUR0uw',
    appId: '1:980826776293:ios:4d454167045930fee6aa0c',
    messagingSenderId: '980826776293',
    projectId: 'trycikol',
    storageBucket: 'trycikol.appspot.com',
    iosBundleId: 'com.example.tricykolMobile',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDR2l4Z4z0Yi6z5M_Sczn-teS-obnUR0uw',
    appId: '1:980826776293:ios:7a51f145518bd2b7e6aa0c',
    messagingSenderId: '980826776293',
    projectId: 'trycikol',
    storageBucket: 'trycikol.appspot.com',
    iosBundleId: 'com.example.tricykolMobile.RunnerTests',
  );
}
