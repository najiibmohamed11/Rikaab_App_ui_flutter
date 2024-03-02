import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:rakaab_ui/Screens/suuqscreens/mainscreen.dart';

class CircleCard extends StatelessWidget {
  CircleCard(this.path, this.text,
      {this.radius = 45.0, this.width = 70, this.ontaped});

  String path;
  String text;
  double width;
  double radius;
  VoidCallback? ontaped;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontaped,
          child: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 210, 227, 212),
            radius: radius,
            child: Container(
              width: width,
              child: Image.asset(path),
            ),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          text,
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
