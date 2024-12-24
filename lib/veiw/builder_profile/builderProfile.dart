import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';

class Builderprofile extends StatelessWidget {
   Builderprofile({super.key,required this.image,required this.name});
  String image;
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secandary,
      appBar: AppBar(
        backgroundColor: AppColors.secandary,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, color: AppColors.primary),
          color: Colors.white,
        ),
        title: Text('Builder Profile',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              ListTile(
                leading: Image.asset(image),
                title: Text(name,style: TextStyle(color: Colors.white,fontSize: 20),),
                subtitle: Text('example@gmail.com',style: TextStyle(color: Colors.grey,fontSize: 10),),
                trailing: Image.asset('images/callbutton.jpg'),
              ),
              Row(children: [
                Text('Portfolio',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ],),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image:  DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/proprty1.jpg',),
                        )
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image:  DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/proprty2.jpg',),
                        )
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image:  DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/proprty3.jpg',),
                        )
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image:  DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/proprty4.jpg',),
                        )
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height*0.5,
                decoration: BoxDecoration(image :DecorationImage(
                  fit: BoxFit.fill,
                  image:AssetImage('images/Builders Profile.jpg'))),
              )
            ],
          ),
          ),
      ),
    );
  }
}