import 'package:flutter/material.dart';

class Prestec extends StatelessWidget {
  const Prestec({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> items = List.generate(20, (index) => "index");
    return Scaffold(
      body: GridView.builder(
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5, mainAxisSpacing: 10.0, crossAxisSpacing: 20),
          itemBuilder: (context, index) {
            return Container(
              height: 200,
              width: 100,
              color: Colors.amber,
            );
          }),
    );
  }
}
