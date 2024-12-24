import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/core/elevatedButtoms.dart';
import 'package:the_real_state/veiw/all_builders/allBuilder.dart';
import 'package:the_real_state/veiw/total_estimation/widget/myCard.dart';

class Totalestemation extends StatelessWidget {
  Totalestemation({super.key});
  List images = [
    'images/cement.jpg',
    'images/red tob.jpg',
    'images/rods.jpg',
    'images/wood.jpg',
    'images/sand.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.secandary,
        appBar: AppBar(
          backgroundColor: AppColors.secandary,
          title: Text(
            'Total Estimation',
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: AppColors.primary,
              )),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            color: AppColors.secandary,
            child: Column(
              children: [
                ListView.builder(
                  physics: AlwaysScrollableScrollPhysics(
                      parent: NeverScrollableScrollPhysics()),
                  shrinkWrap: true,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Mycard(Images: images[index]),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ),
         bottomSheet: Container(
          padding: EdgeInsets.all(20),
          height: MediaQuery.sizeOf(context).height*0.11,
          width: double.infinity,
          color: AppColors.secandary,
          child: Row(children: [
            Elevatedbuttoms(textElv: 'Hire Builders', onpressedElv: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Allbuilder()));
            }, width: MediaQuery.sizeOf(context).width * (0.5), height: 50),
            Spacer(),
            Column(children: [
              Text('Total Cost',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
              Text('\$300000',style: TextStyle(color: AppColors.primary,fontSize: 20,fontWeight: FontWeight.bold),),
            ],)
          ],)
        )
        );
  }
}
