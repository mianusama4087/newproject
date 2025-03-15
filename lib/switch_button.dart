import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

class SwitchButtonscreen extends StatefulWidget {
  const SwitchButtonscreen({super.key});

  @override
  State<SwitchButtonscreen> createState() => _SwitchButtonscreenState();
}

class _SwitchButtonscreenState extends State<SwitchButtonscreen> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Switch Button Example')),
        body: Center(
          child: Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
              print('Switch value: $value');
            },
          ),
        ),
      ),
    );
  }
}
