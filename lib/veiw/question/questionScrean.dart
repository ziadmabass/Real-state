import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/core/elevatedButtoms.dart';
import 'package:the_real_state/core/materialbuttons.dart';
import 'package:the_real_state/veiw/home/homeScraen.dart';
import 'package:the_real_state/veiw/main_layout/mainLayout.dart';

class Questionscrean extends StatefulWidget {
  const Questionscrean({super.key});

  @override
  State<Questionscrean> createState() => _QuestionscreanState();
}

class _QuestionscreanState extends State<Questionscrean> {
  RangeValues _currentRangeValues=RangeValues(0, 100000) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secandary,
      appBar: AppBar(
        backgroundColor: AppColors.secandary,
        leading: Icon(
          Icons.arrow_back,
          color: AppColors.primary,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'What is your budget',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Card(
              margin: const EdgeInsets.all(20),
              color:AppColors.cards,
              child: RangeSlider(
              values: _currentRangeValues,
              min: 0,
              max: 100000,
              divisions: 1000,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),
            ),
            const SizedBox(height: 20),
            Text(
              'Current Value: \$$_currentRangeValues',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 30),
            Text(
              'Where do you want to buy',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 20),
            Container(
              height: 200,
              padding: const EdgeInsets.all(20),
              child: Card(
                  margin: const EdgeInsets.all(20),
                  color:AppColors.cards,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                     Materialbuttons(text: 'Near', ButtonColor:  Color.fromARGB(255, 44, 44, 74), textColor: AppColors.primary,onPressed: (){},),
                     Spacer(),
                     Materialbuttons(text: 'outside', ButtonColor:  Color.fromARGB(255, 247, 79, 79), textColor:Colors.white,onPressed: () {
                       
                     },),
                     SizedBox(width: 20,)
                    ],
                  )),
            ),
            const SizedBox(height: 20),
            Elevatedbuttoms(textElv: 'Show Properties', onpressedElv: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MainLayout(),), (route) => false);
            }, width: 400, height: 70),
            SizedBox(height: 20),
            TextButton(onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MainLayout(),), (route) => false);
            }, child: Text('Skip',style: TextStyle(color:Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),),),
          ],
        ),
      ),
    );
  }
}
