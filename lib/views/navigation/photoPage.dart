import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  static const routeName = '/photoPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Page"),
      ),
      body: Center(
        child: Text("Photo Page", style: TextStyle(fontSize: 50),),
      ),
      
    );
  }
}