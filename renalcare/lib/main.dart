import 'package:flutter/material.dart';

// firebase
import 'package:firebase_core/firebase_core.dart';
import 'package:renalcare/pages/splashScreen.dart';
import 'package:renalcare/pages/splashScreen2.dart';
import 'package:renalcare/pages/splashscreen.dart';
import 'firebase_options.dart';
import 'pages/onboarding_user_details1.dart';

// pages

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
      home: const OnboardingUserDetails1(),
    );
  }
}
