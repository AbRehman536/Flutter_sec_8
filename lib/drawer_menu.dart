import 'package:flutter/material.dart';

class DrawerMenuDemo extends StatelessWidget {
  const DrawerMenuDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Menu"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 300,
              color: Colors.blue,
              child: DrawerHeader(
                  child: Text("My App Drawer")),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
