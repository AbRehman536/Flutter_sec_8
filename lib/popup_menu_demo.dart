import 'package:flutter/material.dart';

class PopupMenuDemo extends StatelessWidget {
  const PopupMenuDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Pop Up Menu"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Profile"))),
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Settings"))),
                PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Chats"))),
                PopupMenuItem(child: TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Logout"))),
              ];

            },)
        ],
      ),
      body: Center(
        child: Text("Tap on 3 dots to open menu"),
      ),
    );
  }
}
