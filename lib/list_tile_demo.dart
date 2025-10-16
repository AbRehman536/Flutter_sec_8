import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Tile"),
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
           return Card(
             color: Colors.purple,
             child: ListTile(
              leading: Icon(Icons.notifications,color: Colors.white,),
              title: Text("Notifications",style: TextStyle(color: Colors.white),),
              subtitle: Text("You have new message",style: TextStyle(color: Colors.white),),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                       ),
           );
        },
      ),
    );
  }
}
