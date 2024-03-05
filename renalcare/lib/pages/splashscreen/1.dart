import 'package:flutter/material.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF4361EE),
      // appBar: AppBar(
      //   title: const Text("Renal care"),
      // ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/logo.png',),
              ),
              Text(
                "RenalCare",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
