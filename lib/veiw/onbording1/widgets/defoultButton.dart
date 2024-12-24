import 'package:flutter/material.dart';

class Defoultbutton extends StatelessWidget {
   Defoultbutton({super.key,required this.text,required this.onPressed,required this.color});
   String text;
   void Function()? onPressed;
  Color color;



  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: Text(text,style: TextStyle(color: color,fontSize: 18),));
  }
}