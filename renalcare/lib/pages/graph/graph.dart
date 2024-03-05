import 'package:flutter/material.dart';
import 'package:renalcare/pages/graph/bar_chart.dart';

class myGraph extends StatefulWidget {
  const myGraph({super.key});

  @override
  State<myGraph> createState() => _myGraphState();
}

class _myGraphState extends State<myGraph> {
  // List of calories
  List<double> weeklySummary = [
    4,
    40,
    2.50,
    42.42,
    10.50,
    100.20,
    88.99,
    90.10
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 400,
          child: barChart(
            weeklySummary: weeklySummary,
          ),
        ),
      ),
    );
  }
}
