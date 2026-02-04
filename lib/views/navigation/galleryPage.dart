import 'package:flutter/material.dart';
import 'package:project_1/views/navigation/photoPage.dart';

class GalleryPage extends StatelessWidget {
  static const routeName = '/galleryPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Gallery Page", style: TextStyle(fontSize: 50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: () {
                  Navigator.of(context).pop();
                }, 
                child: Text("<< Back", style: TextStyle(fontSize: 25),)),
                TextButton(onPressed: () {
                  Navigator.of(context).pushNamed(PhotoPage.routeName);
                }, 
                child: Text("Next >>", style: TextStyle(fontSize: 25),)),
              ],
            )
          ],
        ),
      ),
     
    );
  }
}