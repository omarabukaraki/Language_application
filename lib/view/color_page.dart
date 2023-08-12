import 'package:flutter/material.dart';
import 'package:language/components/item.dart';
import '../components/appBar.dart';
import '../models/item_object.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});
  final List<ItemObject> numbers = const [
    ItemObject(
        image: 'assets/images/colors/color_black.png',
        jpName: 'burakku',
        enName: 'black',
        sound: 'sounds/colors/black.wav'),
    ItemObject(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'chairo',
        enName: 'brown',
        sound: 'sounds/colors/brown.wav'),
    ItemObject(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'hokori ppoi kiiro',
        enName: 'dusty yellow',
        sound: 'sounds/colors/dustyYellow.wav'),
    ItemObject(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'gure',
        enName: 'gray',
        sound: 'sounds/colors/gray.wav'),
    ItemObject(
        image: 'assets/images/colors/color_green.png',
        jpName: 'midori',
        enName: 'green',
        sound: 'sounds/colors/green.wav'),
    ItemObject(
        image: 'assets/images/colors/color_red.png',
        jpName: 'aka',
        enName: 'red',
        sound: 'sounds/colors/red.wav'),
    ItemObject(
        image: 'assets/images/colors/color_white.png',
        jpName: 'sheroy',
        enName: 'wihte',
        sound: 'sounds/colors/white.wav'),
    ItemObject(
        image: 'assets/images/colors/yellow.png',
        jpName: 'kedo',
        enName: 'yallow',
        sound: 'sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarToku(textAppBar: 'Colors', color: Color(0xff7d40a2)),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            items: numbers[index],
            color: const Color(0xff7d40a2),
          );
        },
      ),
    );
  }

  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> itemList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemList.add(ItemNumber(number: numbers[i]));
  //   }
  //   return itemList;
  // }
}
