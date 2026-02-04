import 'package:flutter/material.dart';
import 'package:project_1/views/navigation/galleryPage.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/homePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Text("Home Page", style: TextStyle(fontSize: 50),),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).pushNamed(GalleryPage.routeName);
      },
      child: Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}