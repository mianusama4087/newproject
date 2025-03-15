import 'package:flutter/material.dart';

class Prestec extends StatelessWidget {
  const Prestec({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> item = List.generate(8, (index) => 'index');
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisExtent: 10.0, crossAxisSpacing: 10.0),
          itemBuilder: (context, index) {
            return Container(
              height: 200,
              width: 150,
            );
          }),
    );
  }
}
