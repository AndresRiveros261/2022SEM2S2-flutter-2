import 'package:flutter/material.dart';

import 'pages/home.page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IMC',
      theme: ThemeData.dark(),
            home: HomePage(),
    );
  }
}

