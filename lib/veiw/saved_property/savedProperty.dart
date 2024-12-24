import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/veiw/home/widgets/cards.dart';

class Savedproperty extends StatelessWidget {
   Savedproperty({super.key});
  List<String> images = [
    'images/proprty1.jpg',
    'images/proprty2.jpg',
    'images/proprty3.jpg',
    'images/proprty4.jpg',
    'images/proprty5.jpg',
    'images/proprty6.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.secandary,
        appBar: AppBar(
          backgroundColor: AppColors.secandary,
          title: Text(
            'Saved Property',
            style: TextStyle(color: Colors.white),
          ),
          
          
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            color: AppColors.secandary,
            child: Column(
              children: [
                SearchBar(
           backgroundColor:WidgetStatePropertyAll(AppColors.cards),
           hintText: 'Search...',
           hintStyle: WidgetStatePropertyAll(TextStyle(color: Colors.grey)),
           leading: Icon(Icons.search,color: AppColors.primary,),
           textStyle: WidgetStatePropertyAll(TextStyle(color: Colors.white)),
            onChanged: (value) {},
          ),
          SizedBox(height: 20,),
          ListView.builder(itemBuilder: (context, index){
            return Column(
              children: [
                Stack(
                  children: [
                     
                     Cards(images: images[index]),
                SizedBox(height: 20,),
                Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Card(
                         color: Colors.grey,
                         child: Icon(
                           Icons.save,
                           color: AppColors.primary
                           ,
                         ),
                                             ),
                      )),
                  ],
                )
              ],
            );
          }, itemCount: 5, shrinkWrap: true, physics: NeverScrollableScrollPhysics(),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}