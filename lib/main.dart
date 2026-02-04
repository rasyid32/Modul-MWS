import 'package:flutter/material.dart';
import 'package:project_1/views/navigation/galleryPage.dart';
import 'package:project_1/views/navigation/homePage.dart';
import 'package:project_1/views/navigation/photoPage.dart';
// import 'package:project_1/views/navigation/pageSatu.dart';
// import 'package:project_1/views/home_page.dart';
// import 'package:project_1/views/centerpage.dart';
// import 'package:project_1/views/sizedbox.dart';
// import 'package:project_1/views/textPage.dart';
// import 'package:project_1/views/expanded.dart';
// import 'package:project_1/views/containerPage.dart';
// import 'package:project_1/views/rowPage.dart';
// import 'package:project_1/views/columnPage.dart';
// import 'package:project_1/views/columnrowPage.dart';
// import 'package:project_1/views/counterPage.dart';
// import 'package:project_1/views/mappingList.dart';
// import 'package:project_1/views/dateFormat.dart';
// import 'package:project_1/views/appbarWidget.dart';
// import 'package:project_1/views/tabBarWidget.dart';
// import 'package:project_1/views/FiturTextField.dart';
// import 'package:project_1/views/penggunaanTextField.dart';
// import 'package:project_1/views/gridView.dart';
// import 'package:project_1/views/dialog.dart';
// import 'package:project_1/views/dismissiblee.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quick Note',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        GalleryPage.routeName: (context) => GalleryPage(),
        PhotoPage.routeName: (context) => PhotoPage(),
      },
    );
  }
}
// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int counter = 1;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("dynamic apps")),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text(
//               counter.toString(),
//               style: TextStyle(fontSize: 50 + double.parse(counter.toString())),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     if (counter != 1) {
//                       setState(() {
//                         counter--;
//                       });
//                     }
//                     print(counter);
//                   },
//                   child: Icon(Icons.remove),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       counter++;
//                     });

//                     print(counter);
//                   },
//                   child: Icon(Icons.add),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
