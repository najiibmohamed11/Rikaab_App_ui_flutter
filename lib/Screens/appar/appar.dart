import 'package:flutter/material.dart';
import 'package:rakaab_ui/utilits/colors.dart';

class Costome_appar extends StatelessWidget {
  Costome_appar(this.title);
  String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Kprimery,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      centerTitle: true,
      title: Text(
        title!,
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        Stack(
          children: [
            IconButton(
              icon: Icon(
                Icons.card_travel_outlined,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            Positioned(
              top: 10,
              right: 8,
              child: Container(
                width: 14,
                height: 18,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    "0",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
