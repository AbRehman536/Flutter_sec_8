import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Grid View"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          Icon(Icons.notification_add)
        ],
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
          mainAxisSpacing: 10.5,
            crossAxisSpacing: 10.5,
            mainAxisExtent: 60,
          ),
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.greenAccent,
              child: Column(children: [
                Icon(Icons.notification_add_outlined),
                Text("Notifications")
              ],),
            );
        },
          ),
    );
  }
}
