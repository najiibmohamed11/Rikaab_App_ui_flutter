import 'package:flutter/material.dart';
import 'package:rakaab_ui/utilits/colors.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
              colors: [Kprimery, Color.fromARGB(255, 18, 125, 57)])),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Aligns the row to the top
                children: [
                  Container(
                    height: 150.0, // Adjust height as needed
                    child: Image.asset(
                      "assets/rikaabogo.png",
                      width: 100,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "premium",
                    style: TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Color.fromARGB(255, 151, 130, 37),
                    child: Image.asset("assets/Queen.png"),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListTile(
                // Add space at the top
                leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset("assets/coin.png")),
                title: Text(
                  "points balance",
                  style: TextStyle(color: Colors.white, fontSize: 14.0),
                ), // Placing subtitle content in the title
                subtitle: Text(
                  "50.50",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize:
                        20, // Adjust font size for the "button-like" appearance
                  ),
                ), // Placing title content in the subtitle
              ),
            ),
          ],
        ),
      ),
    );
  }
}
