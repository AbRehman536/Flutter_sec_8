import 'package:flutter/material.dart';

class SingleSelectionDemo extends StatefulWidget {
  const SingleSelectionDemo({super.key});

  @override
  State<SingleSelectionDemo> createState() => _SingleSelectionDemoState();
}

class _SingleSelectionDemoState extends State<SingleSelectionDemo> {
  int selectedIndex = -1 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Selection"),
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            selected: selectedIndex == index,
            selectedTileColor: Colors.blue,
            selectedColor: Colors.white,
            leading: Icon(Icons.notifications),
            title: Text("Notifications : $selectedIndex"),
            subtitle: Text("Index : $index"),
            trailing: Icon(
              selectedIndex == index ? Icons.arrow_downward : Icons.arrow_forward_ios
            ),
            onTap: (){
              setState(() {
                selectedIndex = index;
              });
            },
          );
        },
      ),
    );
  }
}
