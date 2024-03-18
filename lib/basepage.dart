import 'dart:async';
import 'package:flutter/material.dart';
import 'package:yatra/app_styles.dart';
import 'package:yatra/login.dart';
import 'package:yatra/ticket_view.dart';
import 'navbar.dart';
class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}
class _BasePageState extends State<BasePage> {
  Widget build(BuildContext context) {
    var mediaQuery1 = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('YATRA'),  ),
      body : ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height:40 ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: Styles.headlinestyle3,),
                        SizedBox(height: 5,),
                        Text("Book Tickets", style: Styles.headLinestyle,),
                      ],

                    ),

                  //  Image.asset("assets/images/yatralogo.jpg"),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                       image:const DecorationImage(
                         fit: BoxFit.fitHeight,
                         image: AssetImage("assets/images/yatralogo.jpg"),
                       ),
                      ),

                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                  height: mediaQuery1.size.height*0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),

                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                child : Row(
                 children: [
                   const Icon(Icons.search,color: Colors.blueGrey, ),

                   Text(
                     "Search",
                     style: Styles.headlinestyle4,
                   )
                 ],
                ),
                ),
                SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights", style: Styles.headLinestyle2,),
                   InkWell(
                     onTap :(){},
                     child : Text("View all",style: Styles.textstyle.copyWith(color: Styles.primaryColor)),),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: mediaQuery1.size.height*0.02,
          ),
          TicketView(),
        ],

      ),

    );
  }
}