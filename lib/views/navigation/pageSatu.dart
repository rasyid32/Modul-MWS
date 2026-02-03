import 'package:flutter/material.dart';
import 'package:project_1/views/navigation/pageDua.dart';

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page satu navigation"),
      ),
      body: Center(
        child: Text("INI PAGE SATU", 
        style: TextStyle(
          fontSize: 50
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return PageDua();
              },
            )
          );
        },
        child: Icon(Icons.keyboard_arrow_right),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}