import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';

class Materialbuttons extends StatelessWidget {
   Materialbuttons({super.key,required this.text,required this.ButtonColor,required this.textColor,required this.onPressed});
  String text ;
  Color ButtonColor ;
  Color textColor ;
  void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
                        minWidth: 70,
                        height: 60,
                        
                        color:ButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10,), 
                        ),
                        
                        onPressed:onPressed,
                        child: Text(
                          text,
                          style: TextStyle(color: textColor),
                        ),
                      );
  }
}