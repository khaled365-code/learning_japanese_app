import 'package:flutter/material.dart';

import '../models/family_model.dart';




class Familyitem extends StatelessWidget {

  const Familyitem({required this.familymember});

  final FamilyModel familymember;
  @override
  Widget build(BuildContext context) {

    return  Column(
      children: [
        Container(
          color: Colors.green,
          child: Row(
            children: [
              Container(
                  color: Color(0xffFFF6DC),
                  child: Image.asset(familymember.image)),
              Container(
                padding: EdgeInsetsDirectional.only(start: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${familymember.gbText}',style: TextStyle(fontSize: 20,color: Colors.white)),
                    SizedBox(height: 10,),
                    Text('${familymember.enText}',style: TextStyle(fontSize: 20,color: Colors.white)),
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
