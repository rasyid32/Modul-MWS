import 'package:flutter/material.dart';

class SwitchTutorial extends StatefulWidget {

  @override
  State<SwitchTutorial> createState() => _SwitchTutorialState();
}

class _SwitchTutorialState extends State<SwitchTutorial> {
  bool statusSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch.adaptive(
              activeColor: Colors.amber,
              inactiveTrackColor: Colors.red,
              activeTrackColor: Colors.green,
              inactiveThumbColor: Colors.indigo,
              // activeThumbImage: ,
              // inactiveThumbImage: ,
              value: statusSwitch,
              onChanged: (value) {
                setState(() {
                  statusSwitch = !statusSwitch;
                });
              }
            ),
            SizedBox(height: 20),
            Text(
              (statusSwitch == true) ? "Switch ON" : "Switch OFF",
              style: TextStyle( fontSize: 35),
            )
          ],
        ),
      ),
    );
  }
}