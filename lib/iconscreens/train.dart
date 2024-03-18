import 'package:flutter/material.dart';
import 'package:yatra/basepage.dart';
import 'package:yatra/iconscreens/Explore.dart';
import 'package:yatra/login.dart';
import 'package:yatra/navbar.dart';
class TrainPage extends StatefulWidget {
  const TrainPage({super.key});

  @override
  State<TrainPage> createState() => _TrainPageState();
}
class _TrainPageState extends State<TrainPage> {
  Widget build(BuildContext context){
    var mediaQuery1 = MediaQuery.of(context);
    return Scaffold(
        drawer: NavBar(),
    appBar: AppBar(
    title : Text ('YATRA'),
    ),
    body:Container (
    width: mediaQuery1.size.width,
    height: mediaQuery1.size.height,
    child :Column (children :[
    const  SizedBox(
    height: 10,
    width: 100,
    ),
    Container(
    width: mediaQuery1.size.width,
    height:mediaQuery1.size.height*0.15,
    // color: Colors.cyan,
    child: Row(children :[
    Container(
    child: Column(children :[
    const  SizedBox(
    height: 70,
    width: 100,
    ),
    CircleAvatar(
    child :IconButton(
    onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) {  return BasePage();} ,));
    } , icon: const Icon(Icons.train_rounded),
    ),),
    SizedBox( height: mediaQuery1.size.height*0.003),
    Text("Book Ticket",style: TextStyle(fontWeight:FontWeight.bold),),


    ]),),
    const  SizedBox(
    height :50,
    width : 40,
    ),
    Container(
    child: Column(children :[
    SizedBox(
    height: 70,
    width: 100,
    ),
    CircleAvatar(
    child :IconButton(
    onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) {  return BasePage();} ,));
    } , icon: const Icon(Icons.content_paste_search_sharp),
    ),),
    SizedBox( height: mediaQuery1.size.height*0.003),
    Text("PNR Enquiry",style: TextStyle(fontWeight:FontWeight.bold),),
    ]),),
    const   SizedBox(
    height :50,
    width : 40,
    ),
    Container(
    child: Column(children :[
    SizedBox(
    height: 70,
    width: 100,
    ),
    CircleAvatar(
    child :IconButton(
    onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) {  return BasePage();} ,));
    } , icon: const Icon(Icons.airplane_ticket_rounded),
    ),),
    SizedBox( height: mediaQuery1.size.height*0.003,),
    Text("Upcoming Journeys",style: TextStyle(fontWeight:FontWeight.bold),),
    ]),),

    ]),
    ),
      SizedBox( height: mediaQuery1.size.height*0.032,),
    Container(
    width: mediaQuery1.size.width,
    height:mediaQuery1.size.height*0.2,
    //color: Colors.red,
    child: Row(children :[
    Container(
    child: Column(children :[
    SizedBox(
    height: 70,
    width: 100,
    ),
    CircleAvatar(
    child :IconButton(
    onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) {  return BasePage();} ,));
    } , icon: const Icon(Icons.fastfood),
    ),),
    SizedBox( height: mediaQuery1.size.height*0.003,),
    Text("Order Food",style: TextStyle(fontWeight:FontWeight.bold),),
    ]),),
    const  SizedBox(
    height :50,
    width : 40,
    ),
    Container(
    child: Column(children :[
    SizedBox(
    height: 70,
    width: 100,
    ),
    CircleAvatar(
    child :IconButton(
    onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) {  return BasePage();} ,));
    } , icon: const Icon(Icons.document_scanner_sharp),
    ),),
    SizedBox( height: mediaQuery1.size.height*0.003,),
    Text("Cancel Ticket",style: TextStyle(fontWeight:FontWeight.bold),),
    ]),),
    const  SizedBox(
    height :50,
    width : 40,
    ),
    Container(
    child: Column(children :[
    SizedBox(
    height: 70,
    width: 100,
    ),
    CircleAvatar(
    child :IconButton(
    onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) {  return BasePage();} ,));
    } , icon: const Icon(Icons.location_on),
    ),),
    SizedBox( height: mediaQuery1.size.height*0.003,),
    Text("Track Your Train",style: TextStyle(fontWeight:FontWeight.bold),),
    ]),),

    ]),
    ),
      Container(
        width: mediaQuery1.size.width,
        height:mediaQuery1.size.height*0.2,
        //color: Colors.red,
        child: Row(children :[
          Container(
            child: Column(children :[
              SizedBox(
                height: 70,
                width: 100,
              ),
              CircleAvatar(
                child :IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {  return BasePage();} ,));
                  } , icon: const Icon(Icons.route_outlined),
                ),),
              SizedBox( height: mediaQuery1.size.height*0.003,),
              Text("Train Schedule",style: TextStyle(fontWeight:FontWeight.bold),),
            ]),),
          const  SizedBox(
            height :50,
            width : 40,
          ),
          Container(
            child: Column(children :[
              SizedBox(
                height: 70,
                width: 100,
              ),
              CircleAvatar(
                child :IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {  return ExplorePage();} ,));
                  } , icon: const Icon(Icons.travel_explore),
                ),),
              SizedBox( height: mediaQuery1.size.height*0.003,),
              Text("Explore",style: TextStyle(fontWeight:FontWeight.bold),),
            ]),),
          const  SizedBox(
            height :50,
            width : 40,
          ),
          Container(
            child: Column(children :[
              SizedBox(
                height: 70,
                width: 100,
              ),
              CircleAvatar(
                child :IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {  return TrainPage();} ,));
                  } , icon: const Icon(Icons.chat),
                ),),
              SizedBox( height: mediaQuery1.size.height*0.003,),
              Text("Chatbot",style: TextStyle(fontWeight:FontWeight.bold),),
            ]),),

        ]),
      ),

      ],
    ),
    ),
    );
}}
