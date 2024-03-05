import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100), // Add a SizedBox with height 100
          Image(
            image: AssetImage('assets/logo.png',),
          ), // Replace 'path_to
          Text(
            "Let's get started!", // Add your desired text here
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold, // Add font weight here
            ),
          ),
        ],
      ),
    );
  }
}