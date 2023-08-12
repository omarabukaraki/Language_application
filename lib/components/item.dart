import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language/models/phrases.dart';
import '../models/item_object.dart';

class Item extends StatelessWidget {
  Item({super.key, required this.items, required this.color});
  final ItemObject items;
  final AudioPlayer player = AudioPlayer();
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: color,
          ),
          height: 80,
          child: Row(
            children: [
              Container(
                color: Color(0xfffff4db),
                child: Image(
                  image: AssetImage(items.image),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      items.jpName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      items.enName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: IconButton(
                    onPressed: () async {
                      try {
                        await player.setSourceAsset(items.sound);
                        player.resume();
                      } catch (ex) {
                        print(ex);
                      }
                    },
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 28,
                    ),
                  ))
            ],
          )),
    );
  }
}

class ItemPh extends StatelessWidget {
  ItemPh({super.key, required this.ph, required this.color});
  final Phrases ph;
  final AudioPlayer player = AudioPlayer();
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: color,
          ),
          height: 80,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ph.jpName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      ph.enName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: IconButton(
                    onPressed: () async {
                      try {
                        await player.setSourceAsset(ph.sound);
                        player.resume();
                      } catch (ex) {
                        print(ex);
                      }
                    },
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 28,
                    ),
                  ))
            ],
          )),
    );
  }
}
