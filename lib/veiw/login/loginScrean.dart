import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/core/elevatedButtoms.dart';
import 'package:the_real_state/core/iconsButtons.dart';
import 'package:the_real_state/veiw/login/widget/textFeilds.dart';
import 'package:the_real_state/veiw/question/questionScrean.dart';
import 'package:the_real_state/veiw/register/registerscrean.dart';

class Loginscrean extends StatelessWidget {
  const Loginscrean({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic width = MediaQuery.of(context).size.width;
    dynamic height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          Container(
            width: width,
            height: height * 0.4,
            color: AppColors.primary,
            child: Image.asset(
              'images/Logo.png',
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              color: AppColors.secandary,
            ),
            width: width,
            height: height * 0.6,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Textfeilds(
                  image: 'images/Login.jpg',
                  name: 'Username ',
                ),
                Textfeilds(
                  image: 'images/LoginPassword.jpg',
                  name: 'Password ',
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Forget Password?',
                      style: TextStyle(color: Colors.white),
                    ),
                    Spacer(),
                    Elevatedbuttoms(
                      height: 65,
                      width: 200,
                      textElv: 'Login',
                      onpressedElv: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Questionscrean()));
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Registerscrean()));
                }, child: Text('Don\'t have an account?',style: TextStyle(color: Colors.white),)),
                Spacer(),
                Row(
                  children: [
                    Spacer(),
                    Iconsbuttons(
                      icon: Icon(Icons.facebook),
                      onPressedIc: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Questionscrean()));

                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Iconsbuttons(
                      icon: Icon(Icons.g_mobiledata),
                      onPressedIc: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Questionscrean()));

                      },
                      
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Iconsbuttons(
                      icon: Icon(Icons.apple),
                      onPressedIc: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Questionscrean()));

                      },
                    ),
                    Spacer(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
