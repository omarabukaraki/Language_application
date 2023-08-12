import 'package:flutter/material.dart';
import 'package:language/components/appBar.dart';
import 'package:language/components/category.dart';
import 'package:language/view/color_page.dart';
import 'package:language/view/family_page.dart';
import 'package:language/view/numbers_page.dart';
import 'package:language/view/phrases.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarToku(
        textAppBar: 'Toku',
        color: Colors.brown,
      ),
      backgroundColor: const Color(0xfffff4d9),
      body: Column(
        children: [
          Category(
            /*[How to push anther page]*/
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const NumbersPage();
                }),
              );
            },
            color: const Color(0xfff99531),
            text: 'Numbers',
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const FamilyPage();
                }),
              );
            },
            color: const Color(0xff528031),
            text: 'Family Numbers',
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ColorPage();
                },
              ));
            },
            color: const Color(0xff7d40a2),
            text: 'Colors',
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const PhrasesPage();
                },
              ));
            },
            color: const Color(0xff47a5cb),
            text: 'Phrases',
          ),
        ],
      ),
    );
  }
}
