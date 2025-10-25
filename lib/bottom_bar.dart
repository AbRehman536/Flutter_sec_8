import 'package:flutter/material.dart';
import 'package:flutter_sec_8/grid_view.dart';
import 'package:flutter_sec_8/list_tile_demo.dart';
import 'package:flutter_sec_8/login_form.dart';

class BottomBarDemo extends StatefulWidget {
  const BottomBarDemo({super.key});

  @override
  State<BottomBarDemo> createState() => _BottomBarDemoState();
}

class _BottomBarDemoState extends State<BottomBarDemo> {
  int selectedIndex = 0;
  List<Widget> screenList = [ListTileDemo(),GridViewDemo(), LoginFormDemo()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        unselectedItemColor: Colors.white38,
        selectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (value){
          setState(() {
            selectedIndex = value ;
          });
        },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ]),
    );
  }
}
