import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';

class Massege extends StatelessWidget {
   Massege({super.key,required this.image,required this.name,required this.massege});
String image;
String name;
String massege;
  @override
  Widget build(BuildContext context) {
    return Container(
                height: 120,
                child: Card(
                  color: AppColors.cards,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                     Container(
                       width: MediaQuery.sizeOf(context).width*0.6,
                       child: ListTile(
                         title: Text(name,style: TextStyle(color: Colors.white,fontSize: 20),),
                         subtitle: Text(massege,style: TextStyle(color: Colors.grey,fontSize: 15),),
                         trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                       ),
                     )
                    ],),
                  ),
                ),
              );
  }
}