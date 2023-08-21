import 'package:flutter/material.dart';
import 'package:language_learning_app/components/numbers_item.dart';
import 'package:language_learning_app/models/number_model.dart';





class Numberspage extends StatelessWidget {



  List<NumberModel>numbers=[
    NumberModel(image: 'assets/images/numbers/number_one.png', gpText: 'ichi', enText: 'one'),
  NumberModel(image: 'assets/images/numbers/number_two.png', gpText: 'ni', enText: 'two'),
  NumberModel(image: 'assets/images/numbers/number_three.png', gpText: 'san', enText: 'three'),
  NumberModel(image: 'assets/images/numbers/number_four.png', gpText: 'yon', enText: 'four'),
  NumberModel(image: 'assets/images/numbers/number_five.png', gpText: 'go', enText: 'five'),
  NumberModel(image: 'assets/images/numbers/number_six.png', gpText: 'roku', enText: 'six'),
  NumberModel(image: 'assets/images/numbers/number_seven.png', gpText: 'nana', enText: 'seven'),
  NumberModel(image: 'assets/images/numbers/number_eight.png', gpText: 'hachi', enText: 'eight'),
  NumberModel(image: 'assets/images/numbers/number_nine.png', gpText: 'kyu', enText: 'nine'),
  NumberModel(image: 'assets/images/numbers/number_ten.png', gpText: 'jU', enText: 'ten')

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
         itemBuilder: (context, index) => Itemnumber(number: numbers[index]),
         separatorBuilder: (context, index) => SizedBox(height: 5,),


       )

  );
  }
}
