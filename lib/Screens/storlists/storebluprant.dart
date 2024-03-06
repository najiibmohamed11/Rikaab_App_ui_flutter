import 'package:flutter/material.dart';

class ListStoreBluprant extends StatelessWidget {
   ListStoreBluprant({super.key,this.imgpath,this.storeName,this.specification,});
  String? imgpath;
  String? storeName;
  String? specification;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image:
                      DecorationImage(image: AssetImage(imgpath!), fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  storeName!,
                  style: TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  specification!,
                  style: TextStyle(color: Colors.black45),
                ),
                Text(
                  "2.4 KM",
                  style: TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "⏱45-50 minuts",
                  style: TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
