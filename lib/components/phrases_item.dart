
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/models/item_model.dart';

class phrasesItem extends StatelessWidget {

   const phrasesItem({required this.phrase,required this.color});

  final ItemModel phrase;
  final Color color;
  @override
  Widget build(BuildContext context) {

  return  Container(
    color: color,
    child: Row(
      children: [
        Spacer(flex: 1,),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Text('${phrase.gpText}',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text('${phrase.enText}',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ],
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20,top: 10),
            child: IconButton(
                onPressed: () {
                  // final player=AudioPlayer();
                  // player.play(AssetSource('sounds/colors/black.wav'));
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 40,
                )),
          ),
        ],
      ),
  );
  }
}
