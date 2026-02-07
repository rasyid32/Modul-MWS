import 'package:flutter/material.dart';
import 'package:project_1/views/navigation/pageDua.dart';
import 'package:project_1/views/navigation/pageSatu.dart';

class DrawerTutorial extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Tutorial"),
      ),
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
      body: Center(
        child: Text("Drawer Tutorial", style: TextStyle(fontSize: 50),),
      ),
    );
  }
}