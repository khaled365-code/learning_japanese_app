import 'package:flutter/material.dart';
import 'package:language_learning_app/components/reusable_item.dart';
import 'package:language_learning_app/models/item_model.dart';





class Numbersscreen extends StatelessWidget {



  List<ItemModel>numbers=[
    ItemModel(image: 'assets/images/numbers/number_one.png', gpText: 'ichi', enText: 'one'),
  ItemModel(image: 'assets/images/numbers/number_two.png', gpText: 'ni', enText: 'two'),
  ItemModel(image: 'assets/images/numbers/number_three.png', gpText: 'san', enText: 'three'),
  ItemModel(image: 'assets/images/numbers/number_four.png', gpText: 'yon', enText: 'four'),
  ItemModel(image: 'assets/images/numbers/number_five.png', gpText: 'go', enText: 'five'),
  ItemModel(image: 'assets/images/numbers/number_six.png', gpText: 'roku', enText: 'six'),
  ItemModel(image: 'assets/images/numbers/number_seven.png', gpText: 'nana', enText: 'seven'),
  ItemModel(image: 'assets/images/numbers/number_eight.png', gpText: 'hachi', enText: 'eight'),
  ItemModel(image: 'assets/images/numbers/number_nine.png', gpText: 'kyu', enText: 'nine'),
  ItemModel(image: 'assets/images/numbers/number_ten.png', gpText: 'jU', enText: 'ten')

  ];
  @override
  Widget build(BuildContext context) {

  //0xffFFF6DC
  return Scaffold(

    appBar: AppBar(
      backgroundColor: Colors.brown[900],
      title: Text('Numbers',style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'Lugr'),),

    ),
    
    body:ListView.separated(
           itemCount: numbers.length,
         itemBuilder: (context, index) => ReusableItem(item: numbers[index],color: Colors.orange),
         separatorBuilder: (context, index) => SizedBox(height: 5,),


       )

  );
  }
}
