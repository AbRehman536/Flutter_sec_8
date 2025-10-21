import 'package:flutter/material.dart';
import 'package:flutter_sec_8/models/onBoardingModel.dart';

class PageviewDemo extends StatefulWidget {
  const PageviewDemo({super.key});

  @override
  State<PageviewDemo> createState() => _PageviewDemoState();
}

class _PageviewDemoState extends State<PageviewDemo> {
  PageController pagecontroller = PageController();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: "assets/images/download.png", title: "First Page"),
    OnBoardingModel(image: "assets/images/download.png", title: "Second Page"),
    OnBoardingModel(image: "assets/images/download.png", title: "Third Page"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Page View"),
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: onBoardingList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Image.asset(onBoardingList[index].image.toLowerCase()),
              Text(onBoardingList[index].title.toString(),style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900
              ),),
              ElevatedButton(onPressed: (){}, child: Text("Click Me")),
            ],
          );
        }, ),

    );
  }
}
