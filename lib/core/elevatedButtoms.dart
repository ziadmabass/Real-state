import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';

class Elevatedbuttoms extends StatelessWidget {
   Elevatedbuttoms({super.key,required this.textElv,required this.onpressedElv,required this.width,required this.height});
  String textElv;
  void Function()? onpressedElv;
  double width;
  double height;



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: Size(width, height),),
      onPressed:onpressedElv,
      child:  Text(textElv,style: const TextStyle(color: Colors.white,fontSize: 18),),
    );
  }
}