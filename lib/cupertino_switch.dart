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
  List<String> items = ['Flutter', 'React', 'UI/UX', 'Graphics'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cupertino Switch"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              leading: Icon(isSwitchOn? Icons.notification_add : Icons.notifications),
              title: Text(isSwitchOn ? "ON" : "OFF"),
              trailing: CupertinoSwitch(
                  value: isSwitchOn,
                  onChanged: (val){
                    setState(() {
                      isSwitchOn = val;
                    });
                  }),
            ),
            DropdownButton(
              hint: Text("Select Item"),
                value: selectedValue,
                items: items.map((item){
                  return DropdownMenuItem(
                      value: item,
                      child: Text(item));
                }).toList(),
                onChanged: (newValue){
                setState(() {
                  selectedValue = newValue;
                });

    })

          ],
        ),
      ),
    );
  }
}
