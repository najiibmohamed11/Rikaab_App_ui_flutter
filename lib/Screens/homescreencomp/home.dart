import 'package:flutter/material.dart';
import 'package:rakaab_ui/Screens/circleCard.dart';
import 'package:rakaab_ui/Screens/homescreencomp/mainCard.dart';
import 'package:rakaab_ui/Screens/homescreencomp/overscard.dart';
import 'package:rakaab_ui/utilits/colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffCFD1D5),
        bottomNavigationBar: CurvedNavigationBar(
          items: [
            Icon(Icons.home_outlined),
            Icon(Icons.shopping_bag_outlined),
            Icon(Icons.list_alt_rounded),
            FaIcon(FontAwesomeIcons.tag)
          ],
          color: Color.fromARGB(255, 210, 227, 212),
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu_sharp,
                        size: 28.0,
                      ),
                      Icon(
                        Icons.notifications,
                        color: Kprimery,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 45.0,
                  ),
                  MainCard(),
                  SizedBox(
                    height: 35.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleCard("assets/car.png", 100, "Txi"),
                      CircleCard("assets/baskit.png", 100, "Suuq"),
                      CircleCard("assets/food.png", 100, "Food"),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleCard("assets/delivery.png", 70, "Delivery"),
                      CircleCard("assets/lpg.png", 80, "Gass"),
                      CircleCard("assets/supermarket.png", 100, "Supermarkets"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "offers",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 2),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        OverCard("assets/pizza.png", 30, "PIZZA HUT"),
                        OverCard("assets/chicking.jpg", 40, "CHICKING"),
                        OverCard("assets/beydan.jpg", 50, "BEYDAN"),
                      ],
                    ),
                  )
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
