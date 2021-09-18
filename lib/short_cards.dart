import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget showSmallCards() {
  return SizedBox(
    height: 180.0,
    child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (c, index) => smallCard('\$1099', '10')),
  );
}

Widget smallCard(String price, String? discount) {
  return Stack(
    children: [
      Container(
        // height: 250.0,
        width: 120.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.grey,
        ),
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text('price'),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(price),
            ),
          ],
        ),
      ),
      if (discount != null)
        Positioned(
          left: 20.0,
          top: 5.0,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(discount),
            ),
          ),
        ),
    ],
  );
}
