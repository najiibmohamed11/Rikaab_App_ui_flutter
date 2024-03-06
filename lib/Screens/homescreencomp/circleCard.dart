import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:rakaab_ui/Screens/suuqscreens/mainscreen.dart';

class CircleCard extends StatelessWidget {
  CircleCard(this.path, this.text,
      {this.radius = 45.0,
      this.width = 70,
      this.ontaped,
      this.bordersize = 0.0});

  String path;
  String text;
  double width;
  double radius;
  double bordersize;
  VoidCallback? ontaped;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontaped,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.blue, // Set the color of the border here
                width: bordersize, // Set the width of the border here
              ),
            ),
            child: CircleAvatar(
              radius: radius,
              child: Container(
                width: width,
                child: Image.asset(path),
              ),
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
