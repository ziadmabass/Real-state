import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/core/elevatedButtoms.dart';
import 'package:the_real_state/core/iconsButtons.dart';
import 'package:the_real_state/veiw/login/widget/textFeilds.dart';
import 'package:the_real_state/veiw/question/questionScrean.dart';

class Registerscrean extends StatelessWidget {
  const Registerscrean({super.key});

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
            height: height * 0.25,
            color: AppColors.primary,
            
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              color: AppColors.secandary,
            ),
            width: width,
            height: height * 0.75,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Register',
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
                  image: 'images/Register.jpg',
                  name: 'Email ',
                ),
                
                Textfeilds(
                  image: 'images/LoginPassword.jpg',
                  name: 'Password ',
                ),
                SizedBox(
                  height: 60,
                ),
                Elevatedbuttoms(
                  height: 65,
                  width: width*0.8,
                  textElv: 'Register',
                  onpressedElv: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Questionscrean()));

                  },
                ),
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
