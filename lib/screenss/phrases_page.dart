import 'package:flutter/material.dart';
import 'package:language_learning_app/models/item_model.dart';

import '../components/phrases_item.dart';





class Phrasesscreen extends StatelessWidget {



  List<ItemModel>phrases=[
    ItemModel( gpText: 'chich', enText: 'Are you coming'),
    ItemModel( gpText: 'Gomen nasai ', enText: 'I\'m sorry' ),
    ItemModel(gpText: 'Konnichiwa ', enText: 'Hello'),
    ItemModel( gpText: 'Ohayou gozaimasu', enText: 'Good morning'),
    ItemModel( gpText: 'Konbanwa', enText: 'Good evening'),
    ItemModel(gpText: 'Ogenki desu ka?', enText: 'How are you?'),
    ItemModel( gpText: 'Genki desu', enText: 'I’m good'),
    ItemModel( gpText: 'Ohisashiburi desu ne ', enText: 'Long time no see'),
    ItemModel( gpText: 'Namae wa nan desu ka?', enText: 'What’s your name?'),
    ItemModel( gpText: 'Sou desu ka?', enText: 'Really?')

  ];
  @override
  Widget build(BuildContext context) {

    //0xffFFF6DC
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          backgroundColor: Colors.brown[900],
          title: Text('Phrases',style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'Lugr'),),

        ),

        body:ListView.separated(
          itemCount: phrases.length,
          itemBuilder: (context, index) => phrasesItem(phrase: phrases[index],color: Colors.blueAccent),
          separatorBuilder: (context, index) => SizedBox(height: 40,),


        )

    );
  }
}
