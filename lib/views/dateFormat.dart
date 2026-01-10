import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Dateformating extends StatelessWidget {
  const Dateformating({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Date Format")),
        body: Center(
          child: Text(
            DateFormat.yMMMMEEEEd().add_Hms().format(DateTime.now()),
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
