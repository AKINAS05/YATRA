import 'package:flutter/material.dart';
import 'package:yatra/navbar.dart';
class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}
class _ExplorePageState extends State<ExplorePage> {
  Widget build(BuildContext context) {
    var mediaQuery1 = MediaQuery.of(context);
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('YATRA'),
      ),
      body: Container(
    width: mediaQuery1.size.width,
    height: mediaQuery1.size.height*1.5,
    child: SingleChildScrollView(
    scrollDirection: Axis.vertical,
      child: Column(
        children: [
    SizedBox( height: mediaQuery1.size.height*0.02,),
    Container(
    width: mediaQuery1.size.width,
    height : mediaQuery1.size.height*1.2,
    //color: Colors.yellowAccent,
    child:  Column(
    children: [
    // SizedBox( height: mediaQuery1.size.height*0.02,),
    Text("Most Visited Places",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
    SizedBox( height: mediaQuery1.size.height*0.02,),
    Container(
    width: mediaQuery1.size.width,
    height: mediaQuery1.size.height*0.31,
    //color: Colors.blue,
    child:  Row(
    children: [
    Card(//color: Colors.grey,
    elevation: 20,
    child: Container(
    width: mediaQuery1.size.width*0.48,
    height : mediaQuery1.size.height*0.4,
    child: Column(
    children : [
    SizedBox( height: mediaQuery1.size.height*0.003,),
    Image.asset('assets/images/Udaipur.jpg'),
    Image.asset('assets/images/Udaipur2.webp'),
    SizedBox( height: mediaQuery1.size.height*0.02,),
    Text("Place Name : Udaipur", style: TextStyle(fontWeight: FontWeight.bold),),

    ]
    ),
    ),),
    Card(//color: Colors.grey,
    elevation: 20,
    child: Container(
    width: mediaQuery1.size.width*0.48,
    height : mediaQuery1.size.height*0.4,
    child: Column(
    children : [
    SizedBox( height: mediaQuery1.size.height*0.003,),
    Image.asset('assets/images/DELHI.jpg'),
    Image.asset('assets/images/Delhi3.jpeg'),
    Text("Place Name : Delhi", style: TextStyle(fontWeight: FontWeight.bold),),

    ]
    ),
    ),),

    ],
    ),
    ),
    SizedBox( height: mediaQuery1.size.height*0.02,),
    //Text("Most Visited Places",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
    Container(
    width: mediaQuery1.size.width,
    height: mediaQuery1.size.height*0.32,
    //color: Colors.blue,
    child:  Row(
    children: [
    Card(//color: Colors.grey,
    elevation: 20,
    child: Container(
    width: mediaQuery1.size.width*0.48,
    height : mediaQuery1.size.height*0.4,
    child: Column(
    children : [
    SizedBox( height: mediaQuery1.size.height*0.003,),
    Image.asset('assets/images/Kerala.jpeg'),
    Image.asset('assets/images/kerala2.jpg'),
    SizedBox( height: mediaQuery1.size.height*0.025,),
    Text("Place Name : Kerala", style: TextStyle(fontWeight: FontWeight.bold),),

    ]
    ),
    ),),
    Card(//color: Colors.grey,
    elevation: 20,
    child: Container(
    width: mediaQuery1.size.width*0.48,
    height : mediaQuery1.size.height*0.4,
    child: Column(
    children : [
    SizedBox( height: mediaQuery1.size.height*0.003,),
    Image.asset('assets/images/Manali.jpeg'),
    Image.asset('assets/images/manali3.jpg'),
    Text("Place Name : Manali", style: TextStyle(fontWeight: FontWeight.bold),),

    ]
    ),
    ),
    ),

    ],
    ),
    ),
      SizedBox( height: mediaQuery1.size.height*0.02,),
      //Text("Most Visited Places",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
      Container(
        width: mediaQuery1.size.width,
        height: mediaQuery1.size.height*0.32,
        //color: Colors.blue,
        child:  Row(
          children: [
            Card(//color: Colors.grey,
              elevation: 20,
              child: Container(
                width: mediaQuery1.size.width*0.48,
                height : mediaQuery1.size.height*0.4,
                child: Column(
                    children : [
                      SizedBox( height: mediaQuery1.size.height*0.003,),
                      Image.asset('assets/images/Kerala.jpeg'),
                      Image.asset('assets/images/kerala2.jpg'),
                      SizedBox( height: mediaQuery1.size.height*0.025,),
                      Text("Place Name : Goa", style: TextStyle(fontWeight: FontWeight.bold),),

                    ]
                ),
              ),),
            Card(//color: Colors.grey,
              elevation: 20,
              child: Container(
                width: mediaQuery1.size.width*0.48,
                height : mediaQuery1.size.height*0.4,
                child: Column(
                    children : [
                      SizedBox( height: mediaQuery1.size.height*0.003,),
                      Image.asset('assets/images/Manali.jpeg'),
                      Image.asset('assets/images/manali3.jpg'),
                      Text("Place Name : Manali", style: TextStyle(fontWeight: FontWeight.bold),),

                    ]
                ),
              ),
            ),

          ],
        ),
      ),
        ],
      ),
      ),
      ],
    ),
    ),
      ),
    );
  }
}