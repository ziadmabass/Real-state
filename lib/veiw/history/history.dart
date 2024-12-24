import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/veiw/history/widgets/massege.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.secandary,
          title: Text(
            'History',
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.primary,
            ),
          ),
        ),
        backgroundColor: AppColors.secandary,
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(20),
              color: AppColors.secandary,
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Massege(image: 'images/ziad.jpg', name: 'Ziad', massege: 'Payment done'),
                SizedBox(
                  height: 20,
                ),
                Massege(image: 'images/ziad1.jpg', name: 'Ziad mohamed', massege: 'Payment due'),
                SizedBox(
                  height: 20,
                ),
                Massege(image: 'images/ziad2.jpg', name: 'Z mohamed', massege: 'Payment pending'),
                SizedBox(
                  height: 20,
                ),
                Massege(image: 'images/ziad5.jpg', name: 'Ziad Mo', massege: 'Payment Complate'),
                SizedBox(
                  height: 20,
                ),
                Massege(image: 'images/ziad4.jpg', name: 'Ziad Abbas', massege: 'Payment Complate'),
                SizedBox(
                  height: 20,
                ),
              ])),
        ),
      ),
    );
  }
}
