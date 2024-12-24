import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';

class Textfeilds extends StatelessWidget {
   Textfeilds({super.key,required this.name,required this.image});
  String name;
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Card(
        elevation: 5,
        color: Color.fromARGB(255, 44, 44, 74),
        child: TextFormField(
          decoration: InputDecoration(
            labelText: name,
            prefixIcon: Image.asset(image),
            border: InputBorder.none,
            labelStyle: TextStyle(color: Color.fromARGB(255, 171, 171, 188)),
          ),
        style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}