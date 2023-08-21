import 'package:flutter/material.dart';



class Category extends StatelessWidget {

  Category({this.text,this.color,this.onTap});
  String?text;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding:EdgeInsetsDirectional.only(start: 24) ,
      alignment: Alignment.centerLeft ,
      color: color,
      width: double.infinity,
      height: 65,
      child: Text('$text',style: TextStyle(fontSize: 20,color: Colors.white),
      ),
    ),
  );



}
}
