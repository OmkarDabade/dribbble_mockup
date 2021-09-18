import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              height: 270.0,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/background.jpg'),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35.0),
                ),
              ),
              // child: BackdropFilter(
              //   filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              //   child: Container(
              //     decoration: BoxDecoration(
              //         color: Colors.purpleAccent.withOpacity(0.0)),
              //   ),
              // ),
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          onPressed: () {},
                          color: Colors.white,
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(
                            Icons.search_rounded,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          onPressed: () {},
                          color: Colors.white,
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.favorite_outline_outlined,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          onPressed: () {},
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 2.0),
                      child: Text(
                        'New Nike Series',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        'JOYRIDE',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Featured',
              style: GoogleFonts.lato(
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        showSmallCards(),
        const SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Discover',
              style: GoogleFonts.lato(
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _discoverCard(
                  'assets/small_card_item_1.jpg', 'New Sneaker Trends'),
              _discoverCard('assets/small_card_item.jpeg', 'Customize'),
              _discoverCard(
                  'assets/small_card_item_1.jpg', 'New Sneaker Trends')
            ],
          ),
        ),
      ]),
    );
  }

  Widget _discoverCard(String asset, String line) {
    return Container(
      width: 160.0,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(asset),
        ),
        borderRadius: BorderRadius.circular(15.0),
        // gradient: LinearGradient(
        //     colors: [Colors.black, Colors.transparent],
        //     begin: Alignment.bottomCenter,
        //     end: Alignment.topCenter),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              line,
              style: GoogleFonts.lato(
                // fontWeight: FontWeight.w300,
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
