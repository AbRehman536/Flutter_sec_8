import 'package:flutter/material.dart';

class AppbarDemo extends StatelessWidget {
  const AppbarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("App Bar Demo"),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications),
          Icon(Icons.settings),
        ],
      ),
    );
  }
}
