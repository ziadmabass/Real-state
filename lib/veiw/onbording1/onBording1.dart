import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/veiw/login/loginScrean.dart';
import 'package:the_real_state/veiw/onbording1/widgets/defoultButton.dart';
import 'package:the_real_state/veiw/onbording2/onBording2.dart';

class Onbording1 extends StatelessWidget {
  const Onbording1({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic width = MediaQuery.of(context).size.width;
    dynamic height = MediaQuery.of(context).size.height;
    return Scaffold(
      body:Center(
        child: Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          width: width,
          height: height,
          color: AppColors.primary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/Illustration.png",fit: BoxFit.cover,),
              Text('Buy your Dream Home',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(height: 80,),
              Row(children: [
                Defoultbutton(text: 'Skip',color:AppColors.buttons,onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loginscrean()));
                }),
                Spacer(),
                Defoultbutton(text: 'Next',color: Colors.white,onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Onbording2()));
        
                }),
        
              ],)
            ],
          ),
        ),
      )
    );
  }
}