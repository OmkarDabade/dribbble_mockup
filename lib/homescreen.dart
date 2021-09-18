import 'package:dribbble_mockup/short_cards.dart';
import 'package:flutter/material.dart';

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
          title: const TextField(
            decoration: InputDecoration(
              fillColor: Colors.grey,
              border: InputBorder.none,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart, color: Colors.black),
            ),
          ],
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Align(
              child: Text('Sneakers',
                  style: TextStyle(
                    fontSize: 27.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            const TabBar(
              tabs: [
                const Tab(
                  // child: Text('Nike'),
                  text: 'Nike',
                ),
                const Tab(
                  // child: Text('Nike'),
                  text: 'Adidas',
                ),
                const Tab(
                  // child: Text('Nike'),
                  text: 'Puma',
                ),
                const Tab(
                  // child: Text('Nike'),
                  text: 'Hummet',
                ),
                const Tab(
                  // child: Text('Nike'),
                  text: 'Reebok',
                ),
              ],
              isScrollable: true,
              // indicator:,
            ),
            SizedBox(
              height: 250.0,
              child: TabBarView(children: [
                _list(),
                _list(),
                _list(),
                _list(),
                _list(),
              ]),
            ),
            const Align(
              child: Text(
                'Sales',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            showSmallCards(),
          ],
        ),
      ),
    );
  }

  Widget _tabName() {
    return Container();
  }

  Widget _list() {
    return Container(
      height: 200.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (c, index) =>
              _card('Nike', 'Title', '\$199.9', Colors.purple)),
    );
  }

  Widget _card(String brand, String title, String price, Color? color) {
    return Container(
      width: 150.0,
      // height:200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: color,
      ),
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.fromLTRB(6.0, 6.0, 8.0, 6.0),
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
                style: const TextStyle(color: Colors.white),
              ),
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {},
                padding: EdgeInsets.zero,
              )
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              price,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          // Image(
          //   image: AssetImage(''),
          // ),
        ],
      ),
    );
  }
}
