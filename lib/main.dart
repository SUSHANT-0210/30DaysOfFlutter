import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'home_page.dart';

import 'package:flutter_catalog/home_page.dart';

void main() {
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}