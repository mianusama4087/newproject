import 'package:flutter/material.dart';

class Gridviewscreen extends StatelessWidget {
  const Gridviewscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> item = List.generate(20, (index) => "Index");
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 10.0, mainAxisSpacing: 10.0),
          itemBuilder: (context, index) {
            return Container(
              height: 200,
              width: 150,
              color: Colors.amber,
            );
          }),
      // body: Column(
      //   children: [

      //     // Expanded(
      //     //     child: GridView(
      //     //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     //     crossAxisCount: 2,
      //     //     crossAxisSpacing: 10.0,
      //     //     mainAxisSpacing: 10,
      //     //   ),
      //     //   children: [
      //     //     Container(
      //     //       height: 200,
      //     //       width: 150,
      //     //       color: Colors.green,
      //     //     ),
      //     //     Container(
      //     //       height: 200,
      //     //       width: 150,
      //     //       color: Colors.green,
      //     //     ),
      //     //     Container(
      //     //       height: 200,
      //     //       width: 150,
      //     //       color: Colors.green,
      //     //     ),
      //     //     Container(
      //     //       height: 200,
      //     //       width: 150,
      //     //       color: Colors.green,
      //     //     )
      //     //   ],
      //     // ))
      //   ],
      // ),
    );
  }
}
