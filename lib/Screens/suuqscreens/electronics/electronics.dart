import 'package:flutter/material.dart';
import 'package:rakaab_ui/Screens/appar/appar.dart';
import 'package:rakaab_ui/Screens/searchpar/searchpar.dart';
import 'package:rakaab_ui/Screens/suuqscreens/storList.dart';

class ElectrincStores extends StatefulWidget {
  const ElectrincStores({super.key});

  @override
  State<ElectrincStores> createState() => _ElectrincStoresState();
}

class _ElectrincStoresState extends State<ElectrincStores> {
  final List<Map<String, dynamic>> stores = [
    {"store name": "kaamil computers", "imagepath": "assets/kaamil.jpeg"},
    {
      "store name": "discount computers",
      "imagepath": "assets/discount_computers.png"
    },
    {
      "store name": "real electronics",
      "imagepath": "assets/real_electronics.jpg"
    },
    {"store name": "samsung", "imagepath": "assets/samsung.png"}
  ];

  // Create a separate state variable for filtered results
  List<Map<String, dynamic>> filteredList = [];

  void initState() {
    super.initState();

    filteredList.addAll(stores);
  }

  void search(String query) {
    setState(() {
      filteredList.clear();
      if (query.isEmpty) {
        filteredList.addAll(stores);
        return;
      }

      // Consider a more specific matching logic based on your requirements:
      filteredList.addAll(stores.where((element) =>
          element["store name"]!.toLowerCase().contains(query.toLowerCase())));
      print(filteredList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFD1D5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Costome_appar("electronics"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            ReusableTextField(
              hintText: "Search by store",
              onChanged: search,
            ),
            SizedBox(
              height: 25.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Storelist(
                        filteredList[index]["store name"]!,
                        filteredList[index]["imagepath"]!,
                      ),
                      SizedBox(height: 25.0),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
