import 'package:flutter/material.dart';



class Category extends StatelessWidget {

  Category({required this.text,required this.color,required this.onTap});
  String text;
  Color color;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: color),
        ),
        padding: EdgeInsetsDirectional.only(start: 24),
        alignment: Alignment.centerLeft ,
        width: double.infinity,
        height: 65,
        child: Text('$text',style: TextStyle(fontSize: 20,color: Colors.white),
        ),
      ),
    ),
  );



}
}
