import 'package:flutter/material.dart';

class TabbarDemo extends StatelessWidget {
  const TabbarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Text("Tab Bar"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: Container(
              height: 60,
              color: Colors.white,
              child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicator: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  isScrollable: true,
                  tabs: [
                Tab(icon: Icon(Icons.home),text: "Home",),
                Tab(icon: Icon(Icons.person),text: "Profile",),
                Tab(icon: Icon(Icons.settings),text: "Settings",),
                Tab(icon: Icon(Icons.home),text: "Home",),
                Tab(icon: Icon(Icons.person),text: "Profile",),
                Tab(icon: Icon(Icons.settings),text: "Settings",),
                Tab(icon: Icon(Icons.home),text: "Home",),
                Tab(icon: Icon(Icons.person),text: "Profile",),
                Tab(icon: Icon(Icons.settings),text: "Settings",),
              ]),
            ),
          ),
        ),
        body: TabBarView(children: [
          Center(child: Column(children: [
            Text("Home"),
            Icon(Icons.home),
          ],),),
          Center(child: Column(children: [
            Text("Profile"),
            Icon(Icons.person)
          ],),),
          Center(child: Column(children: [
            Text("Settings"),
            Icon(Icons.settings)
          ],),),
        ]),
      ),
    );
  }
}
