import 'package:flutter/material.dart';
import 'package:language/components/appBar.dart';
import 'package:language/components/item.dart';
import '../models/item_object.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<ItemObject> family = const [
    ItemObject(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'father',
        sound: 'sounds/family_members/father.wav'),
    ItemObject(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter',
        sound: 'sounds/family_members/daughter.wav'),
    ItemObject(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'ojisan',
        enName: 'grand Father',
        sound: 'sounds/family_members/grandfather.wav'),
    ItemObject(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother',
        sound: 'sounds/family_members/mother.wav'),
    ItemObject(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'sodo',
        enName: 'grand mother',
        sound: 'sounds/family_members/grandMother.wav'),
    ItemObject(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'nisan',
        enName: 'older brother',
        sound: 'sounds/family_members/olderBother.wav'),
    ItemObject(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'older sister',
        sound: 'sounds/family_members/olderSister.wav'),
    ItemObject(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son',
        sound: 'sounds/family_members/son.wav'),
    ItemObject(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'ototo',
        enName: 'younger brother',
        sound: 'sounds/family_members/youngerBrohter.wav'),
    ItemObject(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'emoto',
        enName: 'younger sister',
        sound: 'sounds/family_members/youngerSister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarToku(
          textAppBar: 'Family Numbers', color: Color(0xff528031)),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) {
          return Item(
            items: family[index],
            color: const Color(0xff528031),
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
