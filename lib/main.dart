import 'package:flutter/material.dart';
import 'package:language/view/HomePage.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'toke',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
