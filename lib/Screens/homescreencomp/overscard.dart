import 'package:flutter/material.dart';

class OverCard extends StatelessWidget {
  OverCard(this.path, this.dicount_percent, this.name);
  String? path;
  String? name;
  int? dicount_percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.0, bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.white60,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ],
        borderRadius: BorderRadius.circular(15.0),
      ),
      width: 180,
      height: 190,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(path!), fit: BoxFit.cover),
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            ),
            width: double.infinity,
            height: 75.0,
            child: null,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 5),
            child: Text(
              name!,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("20-45 minutes"),
              RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.star_half, color: Colors.yellow[700]),
                    ),
                    TextSpan(
                      text: '4.1',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(right: 7.0, top: 7.0),
              width: 100,
              height: 30,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Color(0xffEDD5B1),
                  borderRadius: BorderRadius.circular(10.0)),
              child: MaterialButton(
                onPressed: () {},
                child: Text("${dicount_percent.toString()}% off"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
