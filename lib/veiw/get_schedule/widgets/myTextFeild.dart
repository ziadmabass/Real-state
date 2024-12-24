import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_real_state/core/app_colors.dart';

class Mytextfeild extends StatelessWidget {
   Mytextfeild({super.key,required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 70,
              child: Card(
                color: AppColors.cards,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: text,
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      hintStyle: TextStyle(
                          color: Colors.grey
                        ),
                    ),
                  ),
                ),
              ),
            );
  }
}