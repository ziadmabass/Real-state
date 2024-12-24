import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/veiw/notification/widgets/myNotification.dart';

class NotificationScrean extends StatelessWidget {
  const NotificationScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.secandary,
        appBar: AppBar(
          backgroundColor: AppColors.secandary,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
            color: AppColors.primary,
          ),
          title: Text(
            'Notification',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            color: AppColors.secandary,
            child: Column(
              children: [
                Mynotification(name: 'Broker', massege: 'There is a Proposal'),
                SizedBox(
                  height: 20,
                ),
                Mynotification(name: 'Seller', massege: 'There is a Proposal'),
                SizedBox(
                  height: 20,
                ),
                Mynotification(name: 'Offer', massege: 'Claim your 50% off'),
                SizedBox(
                  height: 20,
                ),
                Mynotification(name: 'Broker', massege: '35% off for you'),
                SizedBox(
                  height: 20,
                ),
                Mynotification(name: 'Broker', massege: 'There is a Proposal'),
                SizedBox(
                  height: 20,
                ),
                Mynotification(name: 'Broker', massege: 'There is a Proposal'),
                SizedBox(
                  height: 20,
                ),
                Mynotification(name: 'Broker', massege: 'There is a Proposal'),
                SizedBox(
                  height: 20,
                ),
                Mynotification(name: 'Broker', massege: 'There is a Proposal'),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
