import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/core/elevatedButtoms.dart';
import 'package:the_real_state/core/materialbuttons.dart';
import 'package:the_real_state/veiw/search_estimated_cost/searchEstimatedCost.dart';

class Filterscraen extends StatefulWidget {
  const Filterscraen({super.key});

  @override
  State<Filterscraen> createState() => _FilterscraenState();
}

class _FilterscraenState extends State<Filterscraen> {
  RangeValues _currentRangeValues=RangeValues(0, 100000) ;
  RangeValues _currentRangeValues2=RangeValues(0, 5000) ;

  


  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height*0.8,
      decoration:
      BoxDecoration(
        color: AppColors.secandary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Proprty size',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            Card(
              margin: const EdgeInsets.all(20),
              color:AppColors.cards,
              child: RangeSlider(
              values: _currentRangeValues2,
              min: 0,
              max: 5000,
              divisions: 10,
              labels: RangeLabels(
                _currentRangeValues2.start.round().toString(),
                _currentRangeValues2.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues2 = values;
                });
              },
            ),
            ),
            Text(
              'Current Value: \$$_currentRangeValues2',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
             Row(
              children: [
                Text(
                  'Proprty price',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
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
            Text(
              'Current Value: \$$_currentRangeValues',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 10),
           Row(
             children: [
              Spacer(),
               Materialbuttons(
              ButtonColor: AppColors.secandary,
              text: 'Resat',
              textColor: Colors.white,
              onPressed: () {},
            ),
            SizedBox(width: 20,),
             Materialbuttons(
              ButtonColor: AppColors.primary,
              text: 'Show availablity',
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => Searchestimatedcost(),));
              },
            ),
              Spacer(),
           
             ],
           )
          ],
        ),
      );
  }
}