import 'package:flutter/material.dart';
import 'package:language/components/appBar.dart';
import 'package:language/components/item.dart';

import '../models/item_object.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<ItemObject> numbers = const [
    ItemObject(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    ItemObject(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'ni',
        enName: 'two',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    ItemObject(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'Mittsu',
        enName: 'three',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    ItemObject(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'four',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    ItemObject(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'five',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    ItemObject(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Sekkusu',
        enName: 'six',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    ItemObject(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'seven',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    ItemObject(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'Hachi',
        enName: 'eight',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemObject(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyū',
        enName: 'nine',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    ItemObject(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Jū',
        enName: 'ten',
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarToku(textAppBar: 'Numbers', color: Color(0xfff99531)),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            items: numbers[index],
            color: Color(0xfff99531),
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
