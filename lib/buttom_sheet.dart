import 'package:flutter/material.dart';

class ButtomSheet extends StatelessWidget {
  const ButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('buttom sheet'),
          ),
          body: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) => Column(
                              children: [
                                ListTile(
                                  title: Text('view'),
                                  leading: Icon(Icons.menu_open_outlined),
                                ),
                                ListTile(
                                  title: Text('delet'),
                                  leading: Icon(Icons.delete_forever_outlined),
                                ),
                                ListTile(
                                  title: Text("delet"),
                                  leading: Icon(Icons.delete_forever_rounded),
                                )
                              ],
                            ));
                  },
                  child: Text("click")),
            ],
          )),
    );
  }
}
