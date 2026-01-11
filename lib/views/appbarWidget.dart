import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Container(color: Colors.amber),
          leadingWidth: 100,
          title: Container(
            // width: 35,
            height: 35,
            color: Colors.red,
          ),
          centerTitle: false,
          actions: [
            Container(width: 50, color: Colors.purple),
            Container(width: 50, color: Colors.black),
            Container(width: 50, color: Colors.purple),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: Container(height: 200, color: Colors.green),
          ),
          flexibleSpace: Container(height: 200, color: Colors.blue),
        ),
      ),
    );
  }
}
