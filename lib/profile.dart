import 'package:flutter/material.dart';
import 'main.dart';
import 'navbar.dart';


void main() => runApp(MyHomePage());

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(child: Text('Profile Page')),
      ),
      //debugShowCheckedModeBanner: false,
      body: Column(
        children: <Widget>[
          UserProfile(), // User details widget
          UserContent(),  // User content widget
        ],
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 0.15 , right: 20 , top: 5),
      child: Center(
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/5678.jpg'), // Replace with your image
            ),
            SizedBox(height: 10),
            Text(
              'Sanjana Choubey', // Replace with user's name
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'sanjanachoubey@example.com', // Replace with user's email
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {} , child: const Text(
                'Edit Profile '
              ),
              ),
            ),
            const SizedBox(height: 40,),

          ],
        ),
      ),
    );
  }
}







class UserContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Text(
            'My Content',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          // You can add more widgets here to display user content
          Text('This is some user-generated content.'),
          Text('More content goes here...'),
        ],
      ),
    );
  }
}