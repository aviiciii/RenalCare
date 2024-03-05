import 'package:flutter/material.dart';

// firebase
import 'package:firebase_core/firebase_core.dart';
import 'package:renalcare/pages/textfield.dart';
import 'firebase_options.dart';

// pages
import 'package:renalcare/pages/login/google_sign_in.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RenalCare',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextFieldPage(),
    );
  }
}
