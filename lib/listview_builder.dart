import 'package:flutter/material.dart';

class Listviewbuilderscreen extends StatelessWidget {
  const Listviewbuilderscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = List.generate(20, (index) => "Index");
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length, // Number of items in the list
        itemBuilder: (context, index) {
          // Builder function to create each item
          return CircleAvatar(
            child: Image.asset(""),
          );
        },
      ),
    );
  }
}
