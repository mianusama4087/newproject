import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';

class Valumescreen extends StatelessWidget {
  const Valumescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BalloonSlider(
              value: 0.5,
              ropeLength: 55,
              showRope: true,
              onChangeStart: (val) {},
              onChanged: (val) {},
              onChangeEnd: (val) {},
              color: Colors.indigo)
        ],
      ),
    );
  }
}
