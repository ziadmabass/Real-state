import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';

class Mynotification extends StatelessWidget {
   Mynotification({super.key,required this.name,required this.massege});
String name;
String massege;
  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 100,
                  child: Card(
                    color: AppColors.cards,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        CircleAvatar(
                          backgroundColor: AppColors.circle,
                          child: Icon(
                            Icons.notification_important,
                            color: AppColors.primary,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 200,top: 10),
                              child: Text(name,style: TextStyle(color: Colors.grey,fontSize: 12,),),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(massege,style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                              ],
                            )
                          ],
                        ),
                        
                      ],),
                    ),
                  ),
                );
  }
}