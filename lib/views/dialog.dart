import 'package:flutter/material.dart';

class DialogTutor extends StatefulWidget {
  @override
  State<DialogTutor> createState() => _DialogTutorState();
}

class _DialogTutorState extends State<DialogTutor> {
    String data = "Belum Ada Input";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
            title: Text("Dialog"),
        ),
        body: Center(
            child: Text(data, style: TextStyle(fontSize: 35),),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
            print("Telah diklik");
            showDialog(context: context, builder: (context){
                return AlertDialog(
                    title: Text("CONFIRM"),
                    content: Text("Are you sure to delete this item?"),
                    actions: [
                        TextButton(
                            onPressed: (){
                                print("Klik No");
                                setState(() {
                                  data = "FALSE";
                                });
                                Navigator.of(context).pop();
                            }, 
                            child: Text("No")
                        ),
                        TextButton(
                            onPressed: (){
                                print("Klik Yes");
                                setState(() {
                                  data = "TRUE";
                                });
                                Navigator.of(context).pop();
                            }, 
                            child: Text("Yes")
                        ),
                    ],
                );

            });
        },
        child: Icon(Icons.delete),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}