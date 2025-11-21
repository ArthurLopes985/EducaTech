import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;

Future initFirebase() async {
  if (kIsWeb) {
    // Load web firebase config from an external JSON file that is not committed
    // to the repository (e.g. `assets/jsons/firebase_config.json`).
    try {
      final raw = await rootBundle.loadString('assets/jsons/firebase_config.json');
      final Map<String, dynamic> data = jsonDecode(raw) as Map<String, dynamic>;

      final options = FirebaseOptions(
        apiKey: data['apiKey'] as String? ?? '',
        authDomain: data['authDomain'] as String? ?? '',
        projectId: data['projectId'] as String? ?? '',
        storageBucket: data['storageBucket'] as String? ?? '',
        messagingSenderId: data['messagingSenderId'] as String? ?? '',
        appId: data['appId'] as String? ?? '',
      );

      await Firebase.initializeApp(options: options);
    } catch (e) {
      // Clear, actionable error for developers: place a file with real values.
      throw Exception(
          'Firebase web config not found or invalid. Add the file `assets/jsons/firebase_config.json` with your Firebase web config (see `assets/jsons/firebase_config.example.json`).');
    }
  } else {
    // For mobile platforms the native configuration files are used
    // (`android/app/google-services.json` and `ios/Runner/GoogleService-Info.plist`).
    // These files should NOT be committed to the repo; keep them locally.
    await Firebase.initializeApp();
  }
}
