import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';

class Cardtile extends StatelessWidget {
   Cardtile({super.key,required this.Images});
  String Images;

  @override
  Widget build(BuildContext context) {
    return Container(
              height: MediaQuery.sizeOf(context).height*0.17,
              width:MediaQuery.sizeOf(context).width ,
              child: Card(
                color: AppColors.cards,
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Row(children: [
                    Image.asset(Images,fit: BoxFit.cover,width: 100,height: 100,),
                    SizedBox(width: 5,),
                    Column(children: [
                      SizedBox(height: 10,),
                      Row(children: [
                        Text('Dup Apartment',style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                        SizedBox(width: 30,),
                        Text('\$267000',style: TextStyle(color: AppColors.primary,fontSize: 12,fontWeight: FontWeight.bold),),
                        SizedBox(width: 20,),
                      ],),
                      SizedBox(height: 20,),
                      Row(children: [
                        Icon(Icons.location_on,color: Colors.grey,size: 18,),
                        SizedBox(width: 5,),
                        Text('2BW Street NY , New York',style: TextStyle(color:Colors.white,fontSize: 12),),
                        SizedBox(width: 55,),
                      ],),
                      SizedBox(height: 20,),
                      Row(children: [
                        Icon(Icons.square_foot,color: Colors.red,size: 15,),
                        SizedBox(width: 5,),
                        Text('2000sqft',style: TextStyle(color:Colors.white,fontSize: 12),),
                        SizedBox(width: 20,),
                        Icon(Icons.bed,color: Colors.red,size: 15,),
                        SizedBox(width: 5,),
                        Text('4',style: TextStyle(color:Colors.white,fontSize: 12),),
                        SizedBox(width: 20,),
                        Icon(Icons.bathtub,color: Colors.red,size: 15,),
                        SizedBox(width: 5,),
                        Text('3',style: TextStyle(color:Colors.white,fontSize: 12),),
                         SizedBox(width: 20,),
                        Icon(Icons.kitchen,color: Colors.red,size: 15,),
                        SizedBox(width: 5,),
                        Text('1',style: TextStyle(color:Colors.white,fontSize: 12),),
                        SizedBox(width: 25,),
                      ],)
                    ],)
                  ],),
                ),
              ),
            );
  }
}