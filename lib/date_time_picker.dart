import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePickerDemo extends StatefulWidget {
  const DateTimePickerDemo({super.key});

  @override
  State<DateTimePickerDemo> createState() => _DateTimePickerDemoState();
}

class _DateTimePickerDemoState extends State<DateTimePickerDemo> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Date Time Picker"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(children: [
        Text(
          DateFormat.yMMMEd().format(selectedDate),
          style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),
        ),
        ElevatedButton(onPressed: (){
          showDatePicker(
              context: context,
              firstDate: DateTime(1970),
              lastDate: DateTime.now()).then((val){
                setState(() {
                  selectedDate = val!;
                });
          });
        }, child: Text("Show Date Picker")),
        SizedBox(height: 20,),
        Text(
          selectedTime.format(context).toString(),
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        ElevatedButton(onPressed: (){
          showTimePicker(
              context: context,
              initialTime: TimeOfDay.now()).then((val){
                setState(() {
                  selectedTime = val!;
                });
          });
        }, child: Text("Show Time Picker"))
      ],),
    );
  }
}
