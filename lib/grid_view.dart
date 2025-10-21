import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
          mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            mainAxisExtent: 360,

          ),
        itemCount: 17,
        itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.yellow,
              child: const Column(children: [
                Icon(Icons.notification_add),
                Text("Notifications")
              ],),
            );
        },
          ),
    );
  }
}
