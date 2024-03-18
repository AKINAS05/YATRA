import 'package:flutter/material.dart';
import 'package:yatra/login.dart';
import 'main.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery1 = MediaQuery.of(context);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/register1.png') , fit: BoxFit.cover)
      ),
      child:  Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 40,top: 170),
                  child:  const Text(
                    "Continue" , style: TextStyle(color: Colors.white),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height*0.37 , right: 35 , left: 35
                    ),
                    child:  Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade300,
                              filled: true,
                              hintText: 'Full Name' ,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        ),
                        const SizedBox(height: 19,),
                        TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade300,
                              filled: true,
                              hintText: 'Email' ,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        ),
                        const SizedBox(height: 19,),
                        TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade300,
                              filled: true,
                              hintText: 'Username' ,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        ),
                        const SizedBox(height: 19,),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade300,
                              filled: true,
                              hintText: 'Password' ,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        ),
                        SizedBox(height: 40,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Sign Up' , style: TextStyle(color: Colors.white,fontSize: 25)),
                              SizedBox( height: mediaQuery1.size.height*0.003),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xff4c505b),
                                child: IconButton(onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {  return MyLogin ();} ,));
                                } , icon: const Icon(Icons.arrow_forward),
                                ),
                              ),
                            ]
                        ),

                      ],
                    ),
                  ),
                ),
              ]
          )

      ),
    );
  }
}

