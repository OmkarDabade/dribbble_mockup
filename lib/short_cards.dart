import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget showSmallCards() {
  return SizedBox(
    height: 210.0,
    child: ListView(
      children: [
        smallCard('\$1099', 'assets/shoe2.png', discount: '10%'),
        smallCard('\$1099', 'assets/shoe3.png'),
        smallCard('\$1099', 'assets/shoe2.png', discount: '20%')
      ],
      scrollDirection: Axis.horizontal,
    ),
  );
}

Widget smallCard(String price, String asset, {String? discount}) {
  return Stack(
    children: [
      Container(
        height: 180.0,
        width: 120.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 5.0,
                color: Colors.grey[300]!,
                spreadRadius: 0.0,
                offset: const Offset(5, 5),
              ),
              BoxShadow(
                blurRadius: 5.0,
                color: Colors.grey[300]!,
                spreadRadius: 0.0,
                offset: const Offset(-5, -5),
              ),
            ]),
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                price,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      if (discount != null)
        Positioned(
          left: 30.0,
          top: 18.0,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(discount),
            ),
          ),
        ),
      Positioned(
        left: 30.0,
        bottom: 60.0,
        child: Image.asset(
          asset,
          // height: 100.0,
          width: 130.0,
        ),
      ),
    ],
  );
}
