import 'package:flutter/material.dart';
import 'package:language/models/phrases.dart';
import '../components/appBar.dart';
import '../components/item.dart';

class PhrasesPage extends StatefulWidget {
  const PhrasesPage({super.key});

  @override
  State<PhrasesPage> createState() => _PhrasesPageState();
}

class _PhrasesPageState extends State<PhrasesPage> {
  final List<Phrases> ph = [
    Phrases(
        sound: 'sounds/phrases/are_you_coming.wav',
        enName: 'are_you_coming',
        jpName: 'kamingu'),
    Phrases(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        enName: 'dont_forget_to_subscribe',
        jpName: 'sabusukuraibu'),
    Phrases(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        enName: 'how_are_you_feeling',
        jpName: 'Go kibun wa ikagadesu ka'),
    Phrases(
        sound: 'sounds/phrases/i_love_anime.wav',
        enName: 'i_love_anime',
        jpName: 'Watashi wa anime ga daisukidesu'),
    Phrases(
        sound: 'sounds/phrases/i_love_programming.wav',
        enName: 'i_love_programming',
        jpName: 'I _ love _ programming'),
    Phrases(
        sound: 'sounds/phrases/programming_is_easy.wav',
        enName: 'programming_is_easy',
        jpName: 'Puroguramingu wa kantandesu'),
    Phrases(
        sound: 'sounds/phrases/what_is_your_name.wav',
        enName: 'what_is_your_name',
        jpName: 'Namae wa nandesu ka'),
    Phrases(
        sound: 'sounds/phrases/where_are_you_going.wav',
        enName: 'where_are_you_going',
        jpName: 'Doko ni iku no'),
    Phrases(
        sound: 'sounds/phrases/yes_im_coming.wav',
        enName: 'yes_im_coming',
        jpName: 'kamingu'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarToku(textAppBar: 'Phrases', color: const Color(0xff47a5cb)),
      body: ListView.builder(
        itemCount: ph.length,
        itemBuilder: (context, index) {
          return ItemPh(
            ph: ph[index],
            color: const Color(0xff47a5cb),
          );
        },
      ),
    );
  }
}
