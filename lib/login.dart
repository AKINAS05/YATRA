import 'package:flutter/material.dart';
import 'package:yatra/main.dart';
import 'package:yatra/password.dart';
import 'style.dart';
import 'bottombar/bottomicon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'auth.dart';


class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  get onPressed => null;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Create an instance of your Auth class
  final Auth _auth = Auth();
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
                          controller: _emailController,
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
                          controller: _passwordController,
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

                        ElevatedButton(
                          onPressed: () async {
                            try {
                              await _auth.signInWithEmailAndPassword(
                                email: _emailController.text,
                                password: _passwordController.text,
                              );
                              // Navigate to the next screen upon successful login
                              // Replace '/home' with the actual route in your app
                              Navigator.push(context, MaterialPageRoute(builder: (context) {  return MyHomePage();} ,));
                            } catch (e) {
                              // Handle login errors
                              print('Failed to sign in: $e');
                              // Show error message to the user
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Failed to sign in: $e'),
                                ),
                              );
                            }
                          },
                          child: Text('Sign In'),
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
