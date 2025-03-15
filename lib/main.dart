import 'package:flutter/material.dart';
import 'package:flutter_application_1/bildurgrid.dart';
import 'package:flutter_application_1/buttom_sheet.dart';
import 'package:flutter_application_1/button.dart';
import 'package:flutter_application_1/calender.dart';
import 'package:flutter_application_1/gridview.dart';
import 'package:flutter_application_1/listview.dart';
import 'package:flutter_application_1/listview_builder.dart';
import 'package:flutter_application_1/loginscreen.dart';
import 'package:flutter_application_1/onboarding_screen.dart';
import 'package:flutter_application_1/switch_button.dart';
import 'package:flutter_application_1/tab_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SwitchButtonscreen(),
    );
  }
}
