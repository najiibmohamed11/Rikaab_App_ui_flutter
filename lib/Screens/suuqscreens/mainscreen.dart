import 'package:flutter/material.dart';
import 'package:rakaab_ui/Screens/appar/appar.dart';
import 'package:rakaab_ui/Screens/homescreencomp/circleCard.dart';
import 'package:rakaab_ui/utilits/colors.dart';

class Mainsuuq extends StatefulWidget {
  Mainsuuq({Key? key}) : super(key: key);

  @override
  _MainsuuqState createState() => _MainsuuqState();
}

class _MainsuuqState extends State<Mainsuuq> {
  List<Map<String, String>> categories = [
    {
      "path": "assets/electronic.png",
      "Text": "electronic",
    },
    {
      "path": "assets/furniture.png",
      "Text": "furniture",
    },
    {
      "path": "assets/pharmacy.png",
      "Text": "pharmacy",
    },
    {
      "path": "assets/cosmatics.png",
      "Text": "cosmetics",
    },
    {
      "path": "assets/clothes.png",
      "Text": "clothes",
    },
    {
      "path": "assets/home apealance.png",
      "Text": "home\n appliance",
    },
    {
      "path": "assets/supermarket.png",
      "Text": "supermarket",
    },
    {
      "path": "assets/degital.png",
      "Text": "digital",
    },
    {
      "path": "assets/shop.png",
      "Text": "shop",
    },
  ];

  late TextEditingController _searchController;

  List<Map<String, String>> filteredCategories = [];

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    filteredCategories.addAll(categories);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void filterCategories(String query) {
    filteredCategories.clear();
    if (query.isEmpty) {
      filteredCategories.addAll(categories);
      return;
    }
    filteredCategories.addAll(
      categories.where(
        (category) => category['Text']!.toLowerCase().contains(
              query.toLowerCase(),
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFD1D5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Costome_appar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _searchController,
                onChanged: (value) {
                  setState(() {
                    filterCategories(value);
                  });
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white24,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  hintText: "Search item",
                  hintStyle: TextStyle(fontSize: 20.0),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 17.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 50.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 17.0,
              ),
              Text(
                "categories",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Wrap(
                  spacing: 25.0,
                  runSpacing: 15.0,
                  children: filteredCategories.map((category) {
                    return CircleCard(
                      category["path"]!,
                      category["Text"]!,
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
