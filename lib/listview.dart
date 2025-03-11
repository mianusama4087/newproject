import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.amber,
          ),
          title: Text('Uzair Mushtaq'),
          subtitle: Text("How are You"),
          trailing: Text('ads'),
        ),
        Divider(
          thickness: 20,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.amber,
          ),
          title: Text('Uzair Mushtaq'),
          subtitle: Text("How are You"),
          trailing: Text('ads'),
        ),
      ],
    ));
  }
}
