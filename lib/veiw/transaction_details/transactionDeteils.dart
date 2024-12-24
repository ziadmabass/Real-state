import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/core/elevatedButtoms.dart';
import 'package:the_real_state/veiw/details/details.dart';
import 'package:the_real_state/veiw/transaction_details/widgets/myRow.dart';

class Transactiondeteils extends StatelessWidget {
  const Transactiondeteils({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary,
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          title: Text(
            'Transaction Details',
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          color: AppColors.primary,
          child: Column(
            children: [
            
            ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('images/ziad5.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                title: Text(
                  'عمو ده انت الي عمو',
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'example@gmail.com',
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ),
            SizedBox(
              height: 20,),
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.sizeOf(context).width ,
                height: MediaQuery.sizeOf(context).height * 0.7954,
                decoration: BoxDecoration(
                  color: AppColors.secandary,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                ),
                child: Column(children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.8,
                    height: MediaQuery.sizeOf(context).height * 0.22,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage('images/31_Transaction details.jpg'),fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text('Transaction ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Myrow(name: 'Token', price: '\$450',),
                  SizedBox(height: 10,),
                  Myrow(name: 'Security Deposit', price: '\$120',),
                  SizedBox(height: 10,),

                  Myrow(name: 'Service Charge', price: '\$90',),
                  SizedBox(height: 20,),
                  Elevatedbuttoms(textElv: 'Transaction Details', onpressedElv: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Details()));
                  }, width: double.infinity, height: 50)

                ],),
              )
            ]
        ),
      ),
    ));
  }
}