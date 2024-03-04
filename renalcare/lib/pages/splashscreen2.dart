import 'package:flutter/material.dart';

class SplashScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Image.asset('assets/logo.png')),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
                // bottomLeft: Radius.circular(.0),
                // bottomRight: Radius.circular(40.0),
              ),
            ),
            child: const Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                //Text Welcome to
                Text(
                  "Welcome to",
                  style: TextStyle(fontSize: 30),
                ),
                //text RenalCare

                Text(
                  'Renal Care',
                  style: TextStyle(fontSize: 40),
                ),
                //Description
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                      "\“Your personalised Dietary Plan App for Kidney Patients\”  ",
                      style: TextStyle(fontSize: 20)),
                ),

                //row for buttons

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: null,
                      child:
                          Text('Skip', style: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      onPressed: null,
                      child: Text('Next'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
