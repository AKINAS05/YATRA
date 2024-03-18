import 'package:flutter/material.dart';
import 'package:yatra/style.dart';

class DocsCard extends StatelessWidget {
  final String title;
  final String image;
  final double width;
  final double height ;


  const DocsCard({
    required this.title,
    required this.image,
    this.width = 300.0,
    this.height = 300.0,
    super.key});

  @override
  Widget build(BuildContext context) => Container(
     child :  Container(
      width: width,
      height: height,
       margin: EdgeInsets.symmetric(horizontal: 8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Column(

        children: <Widget>[
         Row(
           children: <Widget> [
             Expanded(child: buildTitle(context , title:title),)
           ],
         ) ,
          Expanded(child: buildimage()) //this widget for images
        ],
      ),
    ),
  ) ,
  );
  Widget   buildimage() => Image.asset(
    image,
    width: width,
    height: 900,
    fit: BoxFit.cover,
  );
  Widget  buildTitle(BuildContext context , {required String title}) => Container(
    color: Colors.black,
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Text(
      title,
      style: styles.headlineStyle2.copyWith(color: Colors.white),
      textAlign: TextAlign.center,
    ),
  );




}
