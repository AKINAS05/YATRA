import 'auth.dart';
import 'main.dart';
import 'register.dart';
import 'login.dart';
import 'password.dart';
import 'package:flutter/material.dart';
class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot){
        if(snapshot.hasData){
          return MyHomePage();
        } else {
          return MyLogin();
        }
      }
    );
  }
}

