import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sec_8/login_form.dart';


class StackDemo extends StatefulWidget {
  const StackDemo({super.key});

  @override
  State<StackDemo> createState() => _StackDemoState();
}

class _StackDemoState extends State<StackDemo> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
        Navigator.push(context,
        MaterialPageRoute(builder: (context)=>LoginFormDemo()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Stack(children: [
        Image.asset("assets/images/download.png"),
        Padding(
          padding: const EdgeInsets.all(300.0),
          child: ElevatedButton(onPressed: (){}, child: Text("Button")),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 300.0),
          child: Icon(Icons.notifications,size: 80,),
        ),
        Text("Stack")

      ],),
    );
  }
}
