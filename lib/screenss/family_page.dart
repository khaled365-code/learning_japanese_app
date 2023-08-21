import 'package:flutter/material.dart';

import '../components/family_item.dart';
import '../models/family_model.dart';



class Familyscreen extends StatelessWidget {


  List<FamilyModel>familyMembers=[
    FamilyModel(image: 'assets/images/family_members/family_father.png',enText: 'father',gbText: 'Chichioya'),
    FamilyModel(image: 'assets/images/family_members/family_daughter.png',enText: 'daughter',gbText: 'Musume'),
    FamilyModel(image: 'assets/images/family_members/family_grandfather.png',enText: 'Grand Father',gbText: 'Ojisan'),
    FamilyModel(image: 'assets/images/family_members/family_mother.png',enText: 'mother',gbText: 'Hahaoya'),
    FamilyModel(image: 'assets/images/family_members/family_grandmother.png',enText: 'Grand mother',gbText: 'sobo'),
    FamilyModel(image: 'assets/images/family_members/family_older_brother.png',enText: 'older brother',gbText: 'Nisan'),
    FamilyModel(image: 'assets/images/family_members/family_older_sister.png',enText: 'older sister',gbText: 'Ane'),
    FamilyModel(image: 'assets/images/family_members/family_son.png',enText: 'son',gbText: 'Musuko'),
  ];
  @override
  Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.brown[900],
      title: Text('Family Members',style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'Lugr'),),

    ),
    body: ListView.separated(
        itemBuilder: (context, index) => Familyitem(familymember: familyMembers[index]),
        separatorBuilder: (context, index) => SizedBox(height: 5,),
        itemCount: familyMembers.length),

  );
  }
}
