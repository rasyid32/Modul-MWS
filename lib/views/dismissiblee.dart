import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class Dismis extends StatelessWidget {
  final Faker faker = Faker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible Widget"),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index){
          return Dismissible(
            onDismissed: (direction) {
              print("DISMISSED");
            },
            confirmDismiss: (direction) {
              return showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: Text("CONFIRM"),
                  content: Text("Are you sure to delete this item?"),
                  actions: [
                    TextButton(
                      onPressed: (){
                        print("NO");
                        Navigator.of(context).pop(false);
                      },
                      child: Text("No"),
                    ),
                    TextButton(
                      onPressed: (){
                        print("YES");
                        Navigator.of(context).pop(true);
                      },
                      child: Text("Yes"),
                    ),
                  ],
                );
              });
            },
            key: Key(index.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              child: Icon(Icons.delete, size: 25),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 10),
            ),
            child: ListTile(
              leading: CircleAvatar(),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
            ),
          );
        }
      ),
    );
  }
}