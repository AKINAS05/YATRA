import 'package:flutter/material.dart';
import 'package:yatra/bottombar/sanika.dart';
import 'package:yatra/documents.dart';
import 'package:yatra/iconscreens/Explore.dart';
import 'package:yatra/login.dart';
import 'package:yatra/notification.dart';
import 'package:yatra/password.dart';
import 'package:yatra/profile.dart';

class NavBar extends StatelessWidget{
const NavBar({super.key}) ;
@override
Widget build(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        UserAccountsDrawerHeader(accountName: const Text('Sanika'),
          accountEmail: const Text('sanika2875@gmail.com'),
          currentAccountPicture : CircleAvatar(
            child: ClipOval(child:Image.asset('assets/images/person.jpg'),
          ),
        ),
          decoration: BoxDecoration(
            color: Colors.cyan,

          ),
        ),
        ListTile(
          leading : Icon(Icons.file_upload),
          title: Text('Upload ',style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) {  return MyDocuments();} ,));},
        ),
        ListTile(
          leading : Icon(Icons.account_circle),
          title: Text('Profile',style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {  return ProfileApp();} ,));
          },
        ),
        ListTile(
          leading : Icon(Icons.notifications),
          title: Text('Notifications',style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {  return ExplorePage();} ,));
          },
        ),
        ListTile(
          leading : Icon(Icons.favorite),
          title: Text('Favourite',style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) {  return ExplorePage();} ,));},
        ),
        ListTile(
          leading : Icon(Icons.password_outlined),
          title: Text('Forgot Password',style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) {  return MyPassword();} ,));},
        ),
        ListTile(
          leading : Icon(Icons.settings),
          title: Text('Settings',style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () => print ('Settings tapped'),
        ),
        ListTile(
          leading : Icon(Icons.logout),
          title: Text('Sign Out',style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) {  return MyLogin();} ,));},
        ),
        ListTile(
          leading : Icon(Icons.share),
          title: Text('Share',style: TextStyle(fontWeight: FontWeight.bold)),
          onTap: () => print ('Share tapped'),
        ),

      ],

    ),
  );
}
}