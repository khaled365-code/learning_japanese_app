import 'package:flutter/material.dart';
import 'package:language_learning_app/components/reusable_item.dart';
import 'package:language_learning_app/models/item_model.dart';





class Colorsscreen extends StatelessWidget {



  List<ItemModel>colors=[
    ItemModel(image: 'assets/images/colors/color_black.png', gpText: 'kuro', enText: 'black'),
    ItemModel(image: 'assets/images/colors/color_red.png', gpText: 'Aka', enText: 'red'),
    ItemModel(image: 'assets/images/colors/color_white.png', gpText: 'shiro', enText: 'white'),
    ItemModel(image: 'assets/images/colors/color_green.png', gpText: 'midori', enText: 'green'),
    ItemModel(image: 'assets/images/colors/yellow.png', gpText: 'kiiro', enText: 'yellow'),
    ItemModel(image: 'assets/images/colors/color_gray.png', gpText: 'hai', enText: 'gray'),
    ItemModel(image: 'assets/images/colors/color_brown.png', gpText: 'cha', enText: 'brown'),

  ];
  @override
  Widget build(BuildContext context) {

    //0xffFFF6DC
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.brown[900],
          title: Text('Colors',style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'Lugr'),),

        ),

        body:ListView.separated(
          itemCount: colors.length,
          itemBuilder: (context, index) => ReusableItem(item: colors[index],color: Colors.purple,),
          separatorBuilder: (context, index) => SizedBox(height: 5,),


        )

    );
  }
}
