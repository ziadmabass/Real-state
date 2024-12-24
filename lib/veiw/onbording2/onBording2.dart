import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/veiw/login/loginScrean.dart';
import 'package:the_real_state/veiw/onbording1/widgets/defoultButton.dart';

class Onbording2 extends StatelessWidget {
  const Onbording2({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic width = MediaQuery.of(context).size.width;
    dynamic height = MediaQuery.of(context).size.height;
    return Scaffold(
      
      body:Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        width: width,
        height: height,
        color: AppColors.primary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Image.asset("images/Orbording.jpg",fit: BoxFit.cover,),
            Text('Sale your Property',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 80,),
            Row(children: [
              Defoultbutton(text: 'Skip',color:AppColors.buttons,onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loginscrean()));

              }),
              Spacer(),
              Defoultbutton(text: 'Next',color: Colors.white,onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loginscrean()));
              }),

            ],)
          ],
        ),
      )
    );
  }
}