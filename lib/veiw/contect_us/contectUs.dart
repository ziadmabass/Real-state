import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/core/elevatedButtoms.dart';
import 'package:the_real_state/core/iconsButtons.dart';
import 'package:the_real_state/veiw/login/widget/textFeilds.dart';
import 'package:the_real_state/veiw/question/questionScrean.dart';

class ContectUs extends StatelessWidget {
  const ContectUs({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic width = MediaQuery.of(context).size.width;
    dynamic height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.secandary,
            )),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: width,
              height: height * 0.15,
              color: AppColors.primary,
              
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                color: AppColors.secandary,
              ),
              width: width,
              height: height * 0.85,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text('Contect Us',style:TextStyle(color: Colors.white,fontSize: 20),),
                  SizedBox(
                    height: 20,
                  ),
                  Textfeilds(
                    image: 'images/Login.jpg',
                    name: 'Full name ',
                  ),
                   Textfeilds(
                    image: 'images/Register.jpg',
                    name: 'Email Address',
                  ),
                  
                  Textfeilds(
                    image: 'images/LoginPassword.jpg',
                    name: 'Phone No ',
                  ),
                  SizedBox(height: 20,),
                  Card(
                    color: AppColors.cards,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          hintText: 'Massege',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Elevatedbuttoms(
                    height: 65,
                    width: width*0.8,
                    textElv: 'Send',
                    onpressedElv: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Questionscrean()));
        
                    },
                  ),
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
