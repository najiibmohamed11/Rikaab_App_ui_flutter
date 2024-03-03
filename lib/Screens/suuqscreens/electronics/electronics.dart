import 'package:flutter/material.dart';
import 'package:rakaab_ui/Screens/appar/appar.dart';
import 'package:rakaab_ui/Screens/suuqscreens/storList.dart';

class ElectrincStores extends StatefulWidget {
  ElectrincStores({super.key});

  @override
  State<ElectrincStores> createState() => _ElectrincStoresState();
}

class _ElectrincStoresState extends State<ElectrincStores> {
  List<Map<String, dynamic>> stores = [
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

  List<Map<String, dynamic>> filtredlist = [];
  @override
  void initState() {
    super.initState();

    filtredlist.addAll(stores);
  }



  void search(String query) {
    filtredlist.clear();
    if (query.isEmpty) {
      filtredlist.addAll(stores);
      print("the query is emty");
      return;
    }
    print("the query is not emty");

    filtredlist.addAll(stores.where((element) =>
        element["store name"]!.toLowerCase().contains(query.toLowerCase())));
    print(filtredlist);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFD1D5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Costome_appar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  search(value);
                });
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white24,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                hintText: "Search by store",
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
              height: 25.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filtredlist.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Storelist(
                        filtredlist[index]["store name"]!,
                        filtredlist[index]["imagepath"]!,
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
