import 'package:flutter/material.dart';
import 'package:yatra/main.dart';
import 'package:yatra/password.dart';
import 'style.dart';
import 'bottombar/bottomicon.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/login1.png') , fit: BoxFit.cover)
        ),
          child:  Scaffold(
          backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 40,top: 170),
                  child:  Text(
                    "Welcome User!!!" , style: styles.headlineStyle2.copyWith(color: Colors.white),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.5 , right: 35 , left: 35
                    ),
                    child:  Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            hintText: 'Email ID' ,
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
                            Text('Sign in' , style: styles.headlineStyle3.copyWith(color: Color(0xff4c505b)),),
                             CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xff4c505b),
                              child: IconButton(onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {  return MyHomePage ();} ,));

                              } , icon: Icon(Icons.arrow_forward),
                            ),
                             ),
                  ]
                        ),
                        Row(
                          children: [
                            TextButton(onPressed: () {
                              Navigator.pushNamed(context, 'register');
                            }, child: Text('Sign Up' , style: styles.headlineStyle4.copyWith(color: Colors.blue
                            ),)

                            )

                          ],

                        ),
                        Row(
                          children: [
                            TextButton(onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) {  return MyPassword ();},),);

                            }, child: Text('Forget Password ' , style: styles.headlineStyle4.copyWith(color: Colors.blue
                            ),)

                            )

                          ],

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
