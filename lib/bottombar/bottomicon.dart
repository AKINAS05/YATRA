//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yatra/main.dart';


class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {

  int selectedindex = 0;

  static final List<Widget> widgetoptions =<Widget>[
    const Text("Settings"),
    const Text("Notifications"),
    const Text("Profile"),
  ];

  void itemtapped(int index) {
    setState(() {
      selectedindex = index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetoptions[selectedindex],

      ),
      bottomNavigationBar: BottomNavigationBar
        (
        currentIndex: selectedindex,
        onTap: itemtapped ,

        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        // When we tap any icon it changes but it also moves so to remove that following can be done
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526480),

        items: const
        [
          BottomNavigationBarItem(icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              label : 'Settings',
              icon : Icon(Icons.settings)
          ),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),
              activeIcon: Icon(Icons.notifications),
              label: "Notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.person) ,
              activeIcon: Icon(Icons.person),
              label: "Profile")
        ],

      ),
    );
  }
}
