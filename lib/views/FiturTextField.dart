import 'package:flutter/material.dart';

class FiturTextField extends StatelessWidget {
  const FiturTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fitur TextField"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              showCursor: true,
              cursorColor: Colors.red,
              textAlign: TextAlign.center,
              cursorWidth: 10,
              cursorHeight: 25,
              cursorRadius: Radius.circular(20),
              textAlignVertical: TextAlignVertical.center,
              textCapitalization: TextCapitalization.characters,
              autocorrect: true,
              autofocus: true,
              enableSuggestions: true,
              enableInteractiveSelection: true,
              // obscureText: true,
              // obscuringCharacter: "-",
              keyboardType: TextInputType.number,
              readOnly: false,
              // enabled: false,

              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                // fontWeight: FontWeight.bold,
              ),

              decoration: InputDecoration(
                icon: Icon(Icons.person, size: 35,),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                // prefixIcon: Icon(
                //   Icons.person_add,
                //   size: 35,
                // ),
                // prefixText: "Nama : ",
                // prefix: Icon(Icons.person, size: 35,)\
                hintText: "Masukkan Nama Anda",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                labelText: "Nama Lengkap",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}