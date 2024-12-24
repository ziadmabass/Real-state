import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/veiw/owner_profile/widget/cardtile.dart';

class Ownerprofile extends StatelessWidget {
  const Ownerprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secandary,
      appBar: AppBar(
        backgroundColor: AppColors.secandary,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Icons.arrow_back_ios),color:AppColors.primary ,),
        title: Text('Owner Profile',style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(children: [
            ListTile(
              leading: Image.asset('images/Property Owner Profile.jpg'),
              title: Text('James Butler',style: TextStyle(color: Colors.white,fontSize: 20),),
              subtitle: Text('example@gmail.com',style: TextStyle(color: Colors.grey,fontSize: 8),)
            ),
            SizedBox(height: 20,),
            Row(children: [
              InkWell(child: Image.asset('images/massegebutton.jpg',width: 100,height: 100,)),
              Spacer(),
              InkWell(child: Image.asset('images/schedulebutton.jpg',width: 100,height: 100)),
              Spacer(),
              InkWell(child: Image.asset('images/callbutton.jpg',width: 100,height: 100,)),
             
            ],),
            SizedBox(height: 20,),
            Row(children: [
              Text('Property',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            ],),
            SizedBox(height: 20,),
            Cardtile(Images: 'images/dd1cc38664f04fa5ecb8c50db237c7e1.jpg'),
            SizedBox(height: 20,),
            Cardtile(Images: 'images/16d58201a3ddc1ca12bb92d3fb32e455.jpg'),
            SizedBox(height: 20,),
            Cardtile(Images: 'images/proprty1.jpg'),
            SizedBox(height: 20,),
            Cardtile(Images: 'images/proprty2.jpg'),
            SizedBox(height: 20,),
            Cardtile(Images: 'images/proprty3.jpg'),
          ],),
        ),
      ),
    );
  }
}