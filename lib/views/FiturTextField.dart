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
              autocorrect: true,
              autofocus: true,
              enableSuggestions: true,
              enableInteractiveSelection: true,
              obscureText: true,
              obscuringCharacter: "-",
              keyboardType: TextInputType.number,
              readOnly: true,
              // enabled: false,
            ),
          ),
        ),
      ),
    );
  }
}