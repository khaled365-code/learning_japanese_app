import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/item_model.dart';


/*

   This reusable item is used for Colors/family/numbers screens only



*/
class ReusableItem extends StatelessWidget {

  const ReusableItem({required this.item,required this.color});

  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {

  return  Column(
    children: [
      Container(
        color: color,
        child: Row(
          children: [
            Container(
                color: Colors.yellow[200],
                child: Image.asset(item.image!)),
            Container(
              padding: EdgeInsetsDirectional.only(start: 12),
              child: Column(
                children: [
                  Text('${item.gpText}',style: TextStyle(fontSize: 20,color: Colors.white,)),
                  SizedBox(height: 10,),
                  Text('${item.enText}',style: TextStyle(fontSize: 20,color: Colors.white)),
                ],
              ),
            ),
            Spacer(flex: 1,),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                  onPressed: ()
                  {
                    // final player=AudioPlayer();
                    // player.play(AssetSource('sounds/colors/black.wav'));
                      

                  },
                  icon: Icon(Icons.play_arrow,color: Colors.white,size: 40,)),
            ),
          ],
        ),
      ),
    ],
  );
  }
}
