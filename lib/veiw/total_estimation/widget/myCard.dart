import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';

class Mycard extends StatelessWidget {
   Mycard({super.key,required this.Images});
  String Images;

  @override
  Widget build(BuildContext context) {
    return Container(
              height: MediaQuery.sizeOf(context).height*0.13,
              child: Card(
                color: AppColors.cards,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(children: [
                    Image.asset(Images,fit: BoxFit.cover,width: 100,height: 100,),
                    SizedBox(width: 20,),
                    Column(children: [
                      SizedBox(height: 10,),
                      Row(children: [
                        Text('Bricks total',style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                        SizedBox(width: 80,),
                        Text('\$300000',style: TextStyle(color: AppColors.primary,fontSize: 12,fontWeight: FontWeight.bold),)
                      ],),
                      SizedBox(height: 20,),
                      Row(children: [
                        Text('200,000 Pcs (per pcs\$1.5)',style: TextStyle(color:Colors.white,fontSize: 12),),
                        SizedBox(width: 75,),
                      ],),
                     
                    ],)
                  ],),
                ),
              ),
            );
  }
}