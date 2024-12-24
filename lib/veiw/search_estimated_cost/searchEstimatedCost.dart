import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/core/elevatedButtoms.dart';
import 'package:the_real_state/core/materialbuttons.dart';
import 'package:the_real_state/veiw/total_estimation/totalEstemation.dart';

class Searchestimatedcost extends StatefulWidget {
  const Searchestimatedcost({super.key});

  @override
  State<Searchestimatedcost> createState() => _SearchestimatedcostState();
}

class _SearchestimatedcostState extends State<Searchestimatedcost> {
  List<String> images = [
    'images/proprty1.jpg',
    'images/proprty2.jpg',
    'images/proprty3.jpg',
    'images/proprty4.jpg',
    'images/proprty5.jpg',
    'images/proprty6.jpg',
    'images/16d58201a3ddc1ca12bb92d3fb32e455.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secandary,
        title: Text("Search Estimated Cost",style: TextStyle(color: Colors.white),),
        leading: IconButton(onPressed: () { Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios,color: AppColors.primary,)),
      ),
      backgroundColor: AppColors.secandary,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          SearchBar(
           backgroundColor:WidgetStatePropertyAll(AppColors.cards),
           hintText: 'Duplex House...',
           hintStyle: WidgetStatePropertyAll(TextStyle(color: Colors.grey)),
           leading: Icon(Icons.search,color: AppColors.primary,),
           textStyle: WidgetStatePropertyAll(TextStyle(color: Colors.white)),
            onChanged: (value) {},
          ),
          SizedBox(height: 20,),
          Row(children: [
            Text('Duplex House',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            Spacer(),
            Text('See all',style: TextStyle(color: AppColors.primary,fontSize: 12,fontWeight: FontWeight.bold),),
            Icon(Icons.arrow_forward_ios_rounded,color: AppColors.primary,),
            
          ],),
          SizedBox(height: 20,),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: images.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                         image: DecorationImage(image: AssetImage(images[index]),fit: BoxFit.fill ) ),
                  ),
                  SizedBox(width: 20,),
                ],
              );

            }),
          ),
          SizedBox(height: 20,),
          Row(children: [
           Materialbuttons(text: 'Buildings', ButtonColor: Colors.deepOrangeAccent, textColor: Colors.white, onPressed: (){}),
           Spacer(),
          Materialbuttons(text: 'Outside Wall', ButtonColor: AppColors.secandary, textColor: Colors.deepOrangeAccent, onPressed: (){}),
          Spacer(),
          Materialbuttons(text: 'Others', ButtonColor: AppColors.secandary, textColor: Colors.green, onPressed: (){}),
          ],),
          SizedBox(height: 20,),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: AssetImage('images/proprty1.jpg'),fit: BoxFit.fill )
            ),
          ),
          SizedBox(height: 30,),
          Text('Duplex house (2000 sqft)',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Elevatedbuttoms(textElv: 'Estimated Cost', onpressedElv: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Totalestemation(),));
          }, width: double.infinity, height: 70)

        ],),
      )
    );
  }
}