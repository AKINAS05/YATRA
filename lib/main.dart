import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:yatra/SplashScreen.dart';
import 'iconscreens/docs.dart';
import 'iconscreens/Docs cards.dart';
import 'iconscreens/description.dart';
import 'package:yatra/logopage.dart';
import 'login.dart';
import 'register.dart';
import 'navbar.dart';
import'style.dart';
import 'iconscreens/train.dart';
import 'bottombar/sanika.dart';
import 'bottombar/settings.dart';
import 'documents.dart';
import 'basepage.dart';
import 'package:async/async.dart';
import 'iconscreens/placepage.dart';
import 'profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'auth.dart';


void main() async
{ WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

  runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,

    routes: {
      "/": (context) => SplashScreen(),
      "SplashScreen": (context) => MyLogin(),
      'Logo' : (context) => const LogoPage(),
      'Login' : (context) => const MyLogin(),
      'register' : (context) => MyRegister()
    },
  )
);
}
class MyApp extends StatelessWidget{
  const MyApp({Key?key}) :super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter Demo',
     // debugShowCheckedModeBanner : false,
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
      home: LogoPage() ,
    );
  }
}
class MyHomePage extends StatefulWidget{
  const MyHomePage({Key?key}) : super(key:key);
  @override
  State<MyHomePage> createState()=> _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
  int currentIndex = 0;
  @override
  Widget build(BuildContext context)
  {   var mediaQuery1 = MediaQuery.of(context);
    return MaterialApp(
      home : Scaffold(
        //backgroundColor: Colors.transparent,
       drawer: NavBar(),
        appBar: AppBar(
          title : Text ('YATRA'),
        ),
       /* bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
            label: 'Home',
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home),

          ),
            BottomNavigationBarItem(
                label: 'Account',
                icon: Icon(Icons.account_circle_rounded),
               activeIcon: Icon(Icons.account_circle_rounded),
            ),
            BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(Icons.settings),
              activeIcon: Icon(Icons.settings),
            )
          ],
          currentIndex:currentIndex ,
          onTap: (int index){
            setState(() {
              currentIndex = index;
            });
          },
        ),*/
    body:Container (
      width: mediaQuery1.size.width,
      height: mediaQuery1.size.height,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) {  return TrainPage();} ,));
                        } , icon: const Icon(Icons.train_rounded),
                       ),),
                SizedBox( height: mediaQuery1.size.height*0.003),
                Text("Train",style: TextStyle(fontWeight:FontWeight.bold),),


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
                    } , icon: const Icon(Icons.directions_bus_rounded),
                  ),),
                SizedBox( height: mediaQuery1.size.height*0.003),
                Text("Bus",style: TextStyle(fontWeight:FontWeight.bold),),
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
                    } , icon: const Icon(Icons.flight_rounded),
                  ),),
                SizedBox( height: mediaQuery1.size.height*0.003,),
                Text("Flight",style: TextStyle(fontWeight:FontWeight.bold),),
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
                    } , icon: const Icon(Icons.directions_car_rounded),
                  ),),
                SizedBox( height: mediaQuery1.size.height*0.003,),
                Text("Cab",style: TextStyle(fontWeight:FontWeight.bold),),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) {  return MyDocuments();} ,));
                    } , icon: const Icon(Icons.document_scanner_sharp),
                  ),),
                SizedBox( height: mediaQuery1.size.height*0.003,),
                Text("Documents",style: TextStyle(fontWeight:FontWeight.bold),),
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
                    } , icon: const Icon(Icons.chat),
                  ),),
                SizedBox( height: mediaQuery1.size.height*0.003,),
                Text("Help",style: TextStyle(fontWeight:FontWeight.bold),),
              ]),),

          ]),
        ),
        SizedBox( height: mediaQuery1.size.height*0.02,),
        Container(
          width: mediaQuery1.size.width,
          height : mediaQuery1.size.height*1.8,
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
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        width: mediaQuery1.size.width*0.48,
                        height : mediaQuery1.size.height*0.7,
                        child: Column(
                          children : [
                            SizedBox( height: mediaQuery1.size.height*0.003,),
                            Image.asset('assets/images/Udaipur.jpg'),
                            Image.asset('assets/images/Udaipur2.webp'),
                            SizedBox( height: mediaQuery1.size.height*0.02,),
                            TextButton(child: const Text("Place Name : Udaipur", style: TextStyle(fontWeight: FontWeight.bold),),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {  return PlacePage();} ,));
                              },
                            )
                           // Text("Place Name : Udaipur", style: TextStyle(fontWeight: FontWeight.bold),),

                          ]
                        ),
                      ),
                    ),),
                    Card(

                      //color: Colors.grey,
                      elevation: 20,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                      child : Container(
                        width: mediaQuery1.size.width*0.48,
                        height : mediaQuery1.size.height*0.9,
                        child: Column(
                            children : [
                              SizedBox( height: mediaQuery1.size.height*0.003,),
                              Image.asset('assets/images/DELHI.jpg'),
                              Image.asset('assets/images/Delhi3.jpeg',),
                              TextButton(child: const Text("Place Name : Delhi", style: TextStyle(fontWeight: FontWeight.bold),),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {  return PlacePage();} ,));
                                  },
                              )
                            ]
                        ),

                      ),
                      )
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
                    ),),

                ],
              ),
            )
            ],
          ),


        ),
     ],
    ),
    ),

    ),
    ),
    );
}
}





