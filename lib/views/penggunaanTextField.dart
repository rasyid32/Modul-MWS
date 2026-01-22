import 'package:flutter/material.dart';

class PenggunaanTextField extends StatefulWidget {
  PenggunaanTextField({super.key});

  @override
  State<PenggunaanTextField> createState() => _PenggunaanTextFieldState();
}

class _PenggunaanTextFieldState extends State<PenggunaanTextField> {
  TextEditingController myController= TextEditingController();
  String hasil = "Hasil Input";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Field"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: myController,
                  onChanged: (value) {
                    print("ONCHANGE");
                    
                  },
                  onSubmitted: (value) {
                    print(value);
                    setState(() {
                      hasil = value;
                    });
                  },
                  onEditingComplete: () {
                    print("ONEDITINGCOMPLETE");
                    print(myController.text);
                  },
                ),
                Text(hasil)
              ],
            ),
          )),
      ),
    );
  }
}