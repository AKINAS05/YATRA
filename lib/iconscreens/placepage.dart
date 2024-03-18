import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Docs cards.dart';
import 'description.dart';

class PlacePage extends StatefulWidget {
  const PlacePage({super.key});

  @override
  State<PlacePage> createState() => _PlacePageState();
}

class _PlacePageState extends State<PlacePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Container(
      height: 600,
      child : ListView(
      scrollDirection: Axis.horizontal,
      children: cats
      .map((cats) => buildcatCard(context,
      image : cats.image, title: cats.title))
      .toList(),
    ),
    )

  ) ;



  Widget buildcatCard(BuildContext context,{required String image, required String title})=>
      FractionallySizedBox(
        heightFactor: 0.8,
        child: DocsCard(title: title, image: image),
      );


}
