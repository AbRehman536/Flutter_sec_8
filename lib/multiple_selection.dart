import 'package:flutter/material.dart';

class MultipleSelectionDemo extends StatefulWidget {
  const MultipleSelectionDemo({super.key});

  @override
  State<MultipleSelectionDemo> createState() => _MultipleSelectionDemoState();
}

class _MultipleSelectionDemoState extends State<MultipleSelectionDemo> {
  List<int> selectedIndex = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multiple Selection"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) { 
          return ListTile(
            onTap: (){
              setState(() {
                if(selectedIndex.contains(index)){
                  selectedIndex.remove(index);
                }else{
                  selectedIndex.add(index);
                }
              });
            },
            tileColor: selectedIndex.contains(index) ?Colors.blue : Colors.white,
            textColor: selectedIndex.contains(index) ?Colors.white : Colors.black,
            iconColor: selectedIndex.contains(index) ?Colors.white : Colors.black,
            leading: Icon(selectedIndex.contains(index) ?Icons.notifications_active_outlined : Icons.notifications,),
            title: Text("Notifications,$selectedIndex"),
            subtitle: Text("Index, $index"),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        }, 
      ),
    );
  }
}
