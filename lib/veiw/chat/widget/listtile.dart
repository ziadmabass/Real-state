import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
   MyListTile({super.key,required this.image,required this.name,required this.massege,required this.time,required this.onTap});
String image;
String name;
String massege;
String time;
void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onTap: onTap,
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill),
                ),
              ),
              title: Text(name,style: TextStyle(color: Colors.white),),
              subtitle: Text(massege,style: TextStyle(color: Colors.grey),),
              trailing: Text(time,style: TextStyle(color: Colors.green),),  
            );
  }
}