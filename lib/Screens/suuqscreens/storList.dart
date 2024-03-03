import 'package:flutter/material.dart';

class Storelist extends StatelessWidget {
   Storelist(this.store_name,this.imagepath);
  String store_name;
  String imagepath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: const Color.fromARGB(60, 98, 89, 89),
      ),
      width: double.infinity,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: Text(
                store_name,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: AssetImage(imagepath),
                    fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
