import 'package:flutter/material.dart';
import 'package:rakaab_ui/Screens/appar/appar.dart';
import 'package:rakaab_ui/Screens/homescreencomp/circleCard.dart';
import 'package:rakaab_ui/Screens/searchpar/searchpar.dart';
import 'package:rakaab_ui/Screens/storlists/storebluprant.dart';

class Maainfood extends StatefulWidget {
  const Maainfood({super.key});

  @override
  State<Maainfood> createState() => _MaainfoodState();
}

class _MaainfoodState extends State<Maainfood> {
  List<Map<String, dynamic>> resturant = [
    {
      "imagepath": "assets/chife duuliye.jpeg",
      "storename": "chife duuliye",
      "description": "dheylo"
    },
    {
      "imagepath": "assets/justa pizza.png",
      "storename": "justa pizza",
      "description": "diffrent types of pizza"
    },
    {
      "imagepath": "assets/qoobey.jpeg",
      "storename": "qoobey",
      "description": "barosto"
    },
    {
      "imagepath": "assets/zeytuuni.jpeg",
      "storename": "zeytuuni",
      "description": "beer ari"
    },
    {
      "imagepath": "assets/chicking.jpg",
      "storename": "chicking",
      "description": "burger package"
    }
  ];
  List<Map<String, dynamic>> sweets = [
    {
      "imagepath": "assets/akramsweets.png",
      "storename": "akramsweets",
      "description": "home of sweets"
    },
    {
      "imagepath": "assets/janna gelata.png",
      "storename": "janna gelata",
      "description": "jalaato mcn"
    },
    {
      "imagepath": "assets/bacaafe bakery.png",
      "storename": "bacaafe bakery",
      "description": ""
    },
    {
      "imagepath": "assets/512cinnabon.jpeg",
      "storename": "512cinnabon",
      "description": "beer ari"
    },
    {
      "imagepath": "assets/home bakery.jpg",
      "storename": "home bakery",
      "description": ""
    }
  ];
  List<Map<String, dynamic>> coffee = [
    {
      "imagepath": "assets/beydanlogo.png",
      "storename": "beydan 2 dhgax",
      "description": ""
    },
    {
      "imagepath": "assets/beydanlogo.png",
      "storename": "beydan taleex",
      "description": ""
    },
    {
      "imagepath": "assets/kaizen coffee.png",
      "storename": "kaizen coffee",
      "description": ""
    },
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    autcomlist.addAll(resturant);
  }

  List<Map<String, dynamic>> autcomlist = [];
  void searchstore(String store_name) {
    if(store_name.isEmpty){
      
    }
  }

  double resturantborder = 2.0;
  double cakeborder = 0;
  double coffeeborder = 0;

  void filterlist(String tabedone) {
    if (tabedone == "resturant") {
      setState(() {
        resturantborder = 2.0;
        coffeeborder = 0.0;
        cakeborder = 0.0;
        autcomlist.clear();
        autcomlist.addAll(resturant);
      });
    } else if (tabedone == "sweets") {
      setState(() {
        cakeborder = 2.0;
        resturantborder = 0.0;
        coffeeborder = 0.0;
        autcomlist.clear();
        autcomlist.addAll(sweets);
      });
    } else if (tabedone == "coffee") {
      setState(() {
        coffeeborder = 2.0;
        cakeborder = 0.0;
        resturantborder = 0.0;
        autcomlist.clear();
        autcomlist.addAll(coffee);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFD1D5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Costome_appar("food stores"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            ReusableTextField(
                hintText: "search by store",
                onChanged: searchstore,
                padingsize: 15.0),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    filterlist("resturant");
                  },
                  child: CircleCard(
                    "assets/plate.png",
                    "Resturants",
                    width: 50.0,
                    radius: 35.0,
                    bordersize: resturantborder,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    filterlist("sweets");
                  },
                  child: CircleCard(
                    "assets/cake.png",
                    "sweets",
                    width: 45.0,
                    radius: 35.0,
                    bordersize: cakeborder,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    filterlist("coffee");
                  },
                  child: CircleCard(
                    "assets/coffee.png",
                    "coffee",
                    width: 50.0,
                    radius: 35.0,
                    bordersize: coffeeborder,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Resturant",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
                Container(
                  height: 45.0,
                  width: 110.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black45, width: 2.0),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                      ),
                      Container(
                        width: 1.0, // Set the width of the horizontal line
                        color: Colors.grey, // Specify the color of the line
                      ),
                      SizedBox(
                        width: 10.0, // Adjust the width of the SizedBox
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.monitor),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: autcomlist.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListStoreBluprant(
                            imgpath: autcomlist[index]["imagepath"],
                            storeName: autcomlist[index]["storename"],
                            specification: autcomlist[index]["description"]),
                        Container(
                          margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
                          width: double.infinity,
                          height: 1.0,
                          color: Colors.grey,
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
