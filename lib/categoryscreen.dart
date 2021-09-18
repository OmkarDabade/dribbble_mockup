import 'package:flutter/material.dart';

import 'short_cards.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            Container(
              height: 300.0,
              width: double.infinity,
              decoration: const BoxDecoration(
                // image: Image(
                //   image: AssetImage('assets/'),
                // ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                ),
              ),
            ),
          ],
        ),
        const Align(
          child: Text(
            'Featured',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        showSmallCards(),
        const Align(
          child: Text(
            'Discover',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 150.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (c, index) => _discoverCard(),
          ),
        ),
      ]),
    );
  }

  Widget _discoverCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
    );
  }
}
