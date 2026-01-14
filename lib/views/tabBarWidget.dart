import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  TabBarWidget({super.key});
  final List<Tab> mytab = [
    Tab(icon: Icon(Icons.add_a_photo)),
    Tab(text: "Tab 2", icon: Icon(Icons.add_a_photo_rounded)),
    Tab(text: "Tab 3"),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: mytab.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("appbar"),
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.zero,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.green,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              indicator: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(5),
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 5,
                  ),
                ),
              ),
              tabs: mytab,
            ),
          ),
        ),
      ),
    );
  }
}
