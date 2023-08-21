import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/number_model.dart';



class Itemnumber extends StatelessWidget {

  const Itemnumber({required this.number});

  final NumberModel number;
  @override
  Widget build(BuildContext context) {

  return  Column(
    children: [
      Container(
        color: Colors.orange,
        child: Row(
          children: [
            Container(
                color: Color(0xffFFF6DC),
                child: Image.asset(number.image)),
            Container(
              padding: EdgeInsetsDirectional.only(start: 10),
              child: Column(
                children: [
                  Text('${number.gpText}',style: TextStyle(fontSize: 20,color: Colors.white)),
                  SizedBox(height: 10,),
                  Text('${number.enText}',style: TextStyle(fontSize: 20,color: Colors.white)),
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
