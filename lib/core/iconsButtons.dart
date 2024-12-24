import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';

class Iconsbuttons extends StatelessWidget {
   Iconsbuttons({super.key,required this.icon, required this.onPressedIc});
  Icon icon;
  void Function()? onPressedIc;




  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed:onPressedIc,
      icon:icon,iconSize: 20,
      color: AppColors.icons,
      style: ButtonStyle(iconSize: MaterialStateProperty.all(30)),
    );
  }
}