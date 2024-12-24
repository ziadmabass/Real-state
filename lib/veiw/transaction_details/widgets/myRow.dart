import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';

class Myrow extends StatelessWidget {
   Myrow({super.key,required this.name,required this.price});
 String name;
 String price;
  @override
  Widget build(BuildContext context) {
    return Container(
                    width: MediaQuery.sizeOf(context).width ,
                    height: MediaQuery.sizeOf(context).height * 0.06,
                    child: Card(
                      color: AppColors.cards,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(name,style: TextStyle(color: Colors.white,fontSize: 14),),
                            Spacer(),
                            Text(price,style: TextStyle(color: AppColors.primary,fontSize: 14),),
                          ],
                        ),
                      ),
                    ),
                  );
  }
}