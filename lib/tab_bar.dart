import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Text("Tab Bar"),
          actions: [Icon(Icons.notification_add_outlined)],
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white12,
              indicatorColor: Colors.greenAccent,
              isScrollable: true,
              tabs: [
            Tab(icon: Icon(Icons.home),text: "Home" ,),
            Tab(icon: Icon(Icons.settings),text: "Settings" ,),
            Tab(icon: Icon(Icons.person),text: "Profile" ,),
          ]),
        ),
        body: TabBarView(children: [
          Center(child: Column(children: [
            Icon(Icons.home),
            Text("Home"),
          ],),),
          Center(child: Column(children: [
            Image.asset("assets/images/download.png"),
            Text("Settings"),
          ],),),
          Center(child: Column(children: [
            Icon(Icons.person,size: 40,),
            Text("Profile")
          ],),),
        ]),
      ),
    );
  }
}
