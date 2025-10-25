import 'package:flutter/material.dart';
import 'package:flutter_sec_8/asset_image.dart';
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
  List<Widget> screenList = [GridViewDemo(),ListTileDemo(), LoginFormDemo(), AssetImageDemo()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat"),
            BottomNavigationBarItem(icon: Icon(Icons.update),label: "Status"),
            BottomNavigationBarItem(icon: Icon(Icons.social_distance),label: "Community"),
            BottomNavigationBarItem(icon: Icon(Icons.call),label: "Calls"),
          ]),
    );
  }
}
