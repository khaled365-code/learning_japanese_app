import 'package:flutter/material.dart';
import 'package:language_learning_app/models/item_model.dart';
import '../components/reusable_item.dart';



class Familyscreen extends StatelessWidget {


  List<ItemModel>familyMembers=[
    ItemModel(image: 'assets/images/family_members/family_father.png',enText: 'father' , gpText: 'Chichioya'),
    ItemModel(image: 'assets/images/family_members/family_daughter.png',enText: 'daughter',gpText: 'Musume'),
    ItemModel(image: 'assets/images/family_members/family_grandfather.png',enText: 'Grand Father',gpText: 'Ojisan'),
    ItemModel(image: 'assets/images/family_members/family_mother.png',enText: 'mother',gpText: 'Hahaoya'),
    ItemModel(image: 'assets/images/family_members/family_grandmother.png',enText: 'Grand mother',gpText: 'sobo'),
    ItemModel(image: 'assets/images/family_members/family_older_brother.png',enText: 'older brother',gpText: 'Nisan'),
    ItemModel(image: 'assets/images/family_members/family_older_sister.png',enText: 'older sister',gpText: 'Ane'),
    ItemModel(image: 'assets/images/family_members/family_son.png',enText: 'son',gpText: 'Musuko'),
  ];
  @override
  Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.brown[900],
      title: Text('Family Members',style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'Lugr'),),

    ),
    body: ListView.separated(
        itemBuilder: (context, index) => ReusableItem(item: familyMembers[index],color: Colors.green),
        separatorBuilder: (context, index) => SizedBox(height: 5,),
        itemCount: familyMembers.length),

  );
  }
}
