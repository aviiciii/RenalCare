import 'package:flutter/material.dart';
import 'package:renalcare/widgets/bottomnav.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: bottomNav() ,
    );
  }
}
