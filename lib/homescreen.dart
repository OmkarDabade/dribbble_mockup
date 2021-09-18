import 'package:dribbble_mockup/categoryscreen.dart';
import 'package:dribbble_mockup/short_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.menu_rounded, color: Colors.black),
            onPressed: () {},
          ),
          title: TextField(
            maxLines: 1,
            decoration: InputDecoration(
              // contentPadding: EdgeInsets.zero,
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.black38,
                size: 21.0,
              ),
              filled: true,
              fillColor: Colors.grey[300],
              border: InputBorder.none,
              isDense: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon:
                  const Icon(Icons.shopping_cart_outlined, color: Colors.black),
            ),
          ],
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Sneakers',
                  style: GoogleFonts.lato(
                    fontSize: 27.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const TabBar(
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              tabs: [
                Tab(text: 'Nike'),
                Tab(text: 'Adidas'),
                Tab(text: 'Puma'),
                Tab(text: 'Hummet'),
                Tab(text: 'Reebok'),
              ],
              isScrollable: true,
            ),
            SizedBox(
              height: 300.0,
              child: TabBarView(children: [
                _list(),
                _list(),
                _list(),
                _list(),
                _list(),
              ]),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Sales',
                  style: GoogleFonts.lato(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            showSmallCards(),
          ],
        ),
      ),
    );
  }

  Widget _list() {
    return SizedBox(
      // height: 300.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _card('Nike', 'Air Max 270', '\$129.00', 'assets/shoe2.png',
              color: Colors.indigo[800]),
          _card('Nike', 'Air Force 1', '\$115.00', 'assets/shoe3.png',
              color: Colors.yellow[800]),
          // _card('Nike', 'Title', '\$199.9', Colors.purple)
        ],
      ),
    );
  }

  Widget _card(String brand, String title, String price, String asset,
      {Color? color}) {
    return InkWell(
      onTap: () async {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (c) => const CategoryScreen()),
        );
      },
      child: Stack(
        children: [
          Container(
            width: 190.0,
            // height: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: color,
            ),
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      brand + '\n' + title,
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 16.0),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      color: Colors.white,
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    price,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0, left: 30.0),
            child: Image(
              height: 160.0,
              image: AssetImage(asset),
            ),
          ),
        ],
      ),
    );
  }
}
