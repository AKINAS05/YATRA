import 'package:flutter/material.dart';
import 'package:yatra/login.dart';
import 'main.dart';
import 'auth.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyRegister> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final Auth _auth = Auth();
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
                          controller: _nameController,
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
                          controller: _emailController,
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
                          controller: _usernameController,
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
                              await _auth.createUserWithEmailAndPassword(
                                name: _nameController.text,
                                email: _emailController.text,
                                username: _usernameController.text,
                                password: _passwordController.text,

                              );
                              // Navigate to the login screen upon successful registration
                              // Replace '/login' with the actual route in your app
                              Navigator.push(context, MaterialPageRoute(builder: (context) {  return MyLogin();} ,));
                            } catch (e) {
                              // Handle registration errors
                              print('Failed to register: $e');
                              // Show error message to the user
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Failed to register: $e'),
                                ),
                              );
                            }
                          },
                          child: Text('Register'),
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

