import 'package:flutter/material.dart';

class AssetImageDemo extends StatelessWidget {
  const AssetImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asset Image"),
        backgroundColor: Colors.yellow,
      ),
      body: Column(children: [
        Image.asset("assets/images/download.png",width: 400,height: 700,)
      ],),
    );
  }
}
