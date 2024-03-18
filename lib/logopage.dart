import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yatra/login.dart';
class LogoPage extends StatefulWidget {
  const LogoPage({super.key});



  @override
  State<LogoPage> createState() => _LogoPageState();
}
class _LogoPageState extends State<LogoPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2),
        ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder:(BuildContext context) => MyLogin() ))
    );
  }
  Widget build(BuildContext context) {
    var mediaQuery1 = MediaQuery.of(context);
    return Scaffold(
        body :Padding(padding: EdgeInsets.only(top: 250.0,left: 100.0,right:100,),
            child: Container(
              child: Image.asset('assets/images/yatralogo.jpg'),
            )
        )
      );

  }
}