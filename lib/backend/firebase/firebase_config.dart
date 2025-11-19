import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDyV8XWpBccMfNWWq__Ua1PZ9RHkT9xIBo",
            authDomain: "educatech-43.firebaseapp.com",
            projectId: "educatech-43",
            storageBucket: "educatech-43.firebasestorage.app",
            messagingSenderId: "687398347461",
            appId: "1:687398347461:web:85bb6877d8be88c27e46ac"));
  } else {
    await Firebase.initializeApp();
  }
}
