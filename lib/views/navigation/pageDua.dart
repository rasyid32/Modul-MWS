import 'package:flutter/material.dart';
import 'package:project_1/views/navigation/pageSatu.dart';

class PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Dua navigation"),
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
          Navigator.of(context).pop();
        },
        child: Icon(Icons.keyboard_arrow_left),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 150,
              color: Colors.blue,
              alignment: Alignment.bottomLeft,
              child: Text(
                "Menu Pilihan", 
                style: TextStyle(
                  fontSize: 24, 
                  color: Colors.white,
                ),
                ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => PageSatu(),
                  )
                );
              },
              leading: Icon(Icons.home),
              title: Text(
                "Home",
              style: TextStyle(
                fontSize: 24,
              ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => PageDua(),
                  )
                );
              },
              leading: Icon(Icons.settings),
              title: Text(
                "Settings",
              style: TextStyle(
                fontSize: 24,
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}