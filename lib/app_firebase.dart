import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'firebase_options.dart';

class AppFirebase extends StatelessWidget {
  const AppFirebase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Material(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return const App();
        }
        return const Material(
          child: Center(
            child: Text(
              "Não foi possível inicializar o Firebase",
              textDirection: TextDirection.ltr,
            ),
          ),
        );
      },
    );
  }
}
