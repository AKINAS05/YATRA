import 'dart:async';

import 'package:flutter/material.dart';
import 'package:async/async.dart';
import 'package:yatra/login.dart';
import 'package:yatra/main.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay and navigate to the main screen
    Timer(
      Duration(seconds: 4), // Adjust the duration as needed
          () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => MyLogin()),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    var mediaQuery1 = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/yatralogo.jpg') , fit: BoxFit.cover)
      ),
    ),
    );
  }
}


