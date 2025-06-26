import 'package:flutter/material.dart';
import 'package:tp_1_dm/pages/counter.page.dart';
import 'package:tp_1_dm/pages/home.page.dart';
import 'package:tp_1_dm/pages/products.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      routes: {
        '/': (context) => HomePage(),
        '/counter': (context) => Counter(),
        '/products': (context) => Products(),
      },
      theme: ThemeData(primaryColor: Colors.orange),
    );
  }
}
