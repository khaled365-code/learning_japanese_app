import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:language_learning_app/components/homepage_item.dart';
import 'package:language_learning_app/screenss/family_page.dart';
import 'package:language_learning_app/screenss/numbers_page.dart';



class Home extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],

      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,),
        backgroundColor: Colors.brown[900],
        title: Text('Toku',style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'Lugr'),),

      ),
      body: Column(
        children: [
          Category(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Numberspage();
              } ,));
            },
            text: 'Numbers',
            color: Colors.orange,
          ),
          Category(
            onTap: ()
            {
              Navigator.push(context,MaterialPageRoute(builder: (context) => Familyscreen(),));
            },
            text: 'Family Members',
            color: Colors.green,
          ),
          Category(
            onTap: ()
            {

            },
            text: 'Colors',
            color:  Colors.purple,
          ),
          Category(
            onTap: ()
            {

            },
            text: 'Phrases',
            color: Colors.blueAccent,
          ),


        ],
      ),






    );
  }
}
