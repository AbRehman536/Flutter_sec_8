import 'package:flutter/material.dart';

class FABDemo extends StatelessWidget {
  const FABDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: Icon(Icons.arrow_back_ios,color: Colors.red,size: 40,),
        title: Text("FAB Demo",style: TextStyle(
          color: Colors.orange,
          fontSize: 30,
          fontWeight: FontWeight.w900
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications,color: Colors.green,size: 35,),
          Icon(Icons.settings,color: Colors.yellow,size: 45,),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        onPressed: () {  },
        label: Text("Add"),
        icon: Icon(Icons.add),
      
      ),
    );
  }
}
