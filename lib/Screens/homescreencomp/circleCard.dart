import 'package:flutter/material.dart';

class CircleCard extends StatelessWidget {
  CircleCard(this.path, this.width, this.text);

  String path;
  String text;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 210, 227, 212),
          radius: 45.0,
          child: Container(
            width: width,
            child: Image.asset(path),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
