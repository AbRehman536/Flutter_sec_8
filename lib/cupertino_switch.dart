import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchDemo extends StatefulWidget {
  const CupertinoSwitchDemo({super.key});

  @override
  State<CupertinoSwitchDemo> createState() => _CupertinoSwitchDemoState();
}

class _CupertinoSwitchDemoState extends State<CupertinoSwitchDemo> {
  bool isSwitchOn = false;
  String? selectedValue;
  List<String> items = ["Flutter", "Angular", "UI/UX", "Web"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cupertino Switch"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
        children: [
          ListTile(
            leading: Icon(isSwitchOn? Icons.notifications_active_outlined : Icons.notifications),
            title: Text(isSwitchOn ? "Notifications ON" : "Notifications OFF"),
            trailing: CupertinoSwitch(
                value: isSwitchOn,
              onChanged: (bool value) {
                  setState(() {
                    isSwitchOn = value;
                  });
              }, ),
          ),
          DropdownButton(
            hint: Text("Select Item"),
              value: selectedValue,
              items: items.map((item){
                return DropdownMenuItem(
                  value: item,
                    child: Text(item));
              }).toList(),
              onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
              },
              )
        ],
      ),),
    );
  }
}
