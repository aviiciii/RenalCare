import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



// a empty page
class MyHomePage extends StatelessWidget {
  final User user;

  MyHomePage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello World!')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to RenalCare!'),
            Text(user.displayName ?? ''),
            Text(user.email ?? ''),
          ],
        ),
      ),
    );
  }
}