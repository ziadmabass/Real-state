import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';

class Termscondetions extends StatelessWidget {
  const Termscondetions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secandary,
      appBar: AppBar(
        backgroundColor: AppColors.secandary,
        title: Text('Terms of Service',style: TextStyle(color: Color.fromARGB(255, 243, 235, 235),fontWeight: FontWeight.bold),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: AppColors.primary,)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Terms ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                ],
              ),
              SizedBox(height: 20,),
              Text('A term and condetions agreement outlines the website adminstrators rules regarding user behavior , and provides information about the action the website adminstrator can and will perform.',style: TextStyle(color: Colors.grey),),
              SizedBox(height: 20,),
              Text('Your terms and conditions agreement are between the website and its users . In the event of a legal dispute , arbitrators will look to this argreement to determine whether eash party acted within their rights.',style: TextStyle(color: Colors.grey),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('User License ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                ],
              ),
              SizedBox(height: 20,),
              Text('A term and condetions agreement outlines the website adminstrators rules regarding user behavior , and provides information about the action the website adminstrator can and will perform.',style: TextStyle(color: Colors.grey),),
              SizedBox(height: 20,),
              Text('Your terms and conditions agreement are between the website and its users . In the event of a legal dispute , arbitrators will look to this argreement to determine whether eash party acted within their rights.',style: TextStyle(color: Colors.grey),),
              SizedBox(height: 20,),
                        Row(
                children: [
                  Text('Our Privecy Policy',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                ],
              ),
              SizedBox(height: 20,),
              Text('A term and condetions agreement outlines the website adminstrators rules regarding user behavior , and provides information about the action the website adminstrator can and will perform.',style: TextStyle(color: Colors.grey),),
          
            ],
          ),
        ),
      ),
    );
  }
}