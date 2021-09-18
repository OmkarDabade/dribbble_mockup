import 'package:flutter/material.dart';
import 'homescreen.dart';

void main() {
  runApp(const DribbbleMockApp());
}

class DribbbleMockApp extends StatelessWidget {
  const DribbbleMockApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
