import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 100), // Add a SizedBox with height 100
          const Image(
            image: AssetImage('assets/logo.png',),
          ), // Replace 'path_to
          const Text(
            "Let's get started!", // Add your desired text here
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold, // Add font weight here
            ),
          ),
          const SizedBox(height: 50), 
          ElevatedButton(
          child: Text('Sign in with Google'),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            textStyle: const TextStyle(
                color: Colors.white,
                 fontSize: 20, 
                 fontStyle: FontStyle.normal),
          ),
          onPressed: () {},
        ),
        ],
      ),
    );
  }
}