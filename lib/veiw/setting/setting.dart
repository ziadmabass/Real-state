import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/veiw/contect_us/contectUs.dart';
import 'package:the_real_state/veiw/dark_mode/darkMode.dart';
import 'package:the_real_state/veiw/history/history.dart';
import 'package:the_real_state/veiw/login/loginScrean.dart';
import 'package:the_real_state/veiw/notification/notification.dart';
import 'package:the_real_state/veiw/saved_card/savedCard.dart';
import 'package:the_real_state/veiw/terms&condetions/terms&condetions.dart';
import 'package:the_real_state/veiw/transaction_details/transactionDeteils.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.secandary,
        appBar: AppBar(
          backgroundColor: AppColors.secandary,
          title: Text(
            "Settings",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            color: AppColors.secandary,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Card(
                  color: AppColors.cards,
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 91, 65, 57),
                        child: Icon(
                          Icons.person,
                          color: Colors.orangeAccent,
                        )),
                    title: Text(
                      "Personal Profile",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                    color: AppColors.cards,
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContectUs()));
                      },
                      leading: CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 76, 52, 52),
                          child: Icon(
                            Icons.privacy_tip_sharp,
                            color: Colors.red,
                          )),
                      title: Text(
                        "Privacy Policy",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    )),
                SizedBox(
                  height: 15,
                ),
                Card(
                  color: AppColors.cards,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Transactiondeteils()));
                    },
                    leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 98, 95, 73),
                        child: Icon(
                          Icons.wallet,
                          color: Colors.yellow,
                        )),
                    title: Text(
                      "Walliet Management",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  color: AppColors.cards,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationScrean()));
                    },
                    leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 39, 34, 48),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.purple,
                        )),
                    title: Text(
                      "Notification",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  color: AppColors.cards,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => History()));
                    },
                    leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 97, 73, 98),
                        child: Icon(
                          Icons.history,
                          color: Colors.pink,
                        )),
                    title: Text(
                      "History",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  color: AppColors.cards,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Termscondetions()));
                    },
                    leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 51, 51, 51),
                        child: Icon(
                          Icons.line_style,
                          color: Colors.black,
                        )),
                    title: Text(
                      "Terms & Conditions",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),SizedBox(
                  height: 15,
                ),
                Card(
                  color: AppColors.cards,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Darkmode()));
                    },
                    leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 51, 51, 51),
                        child: Icon(
                          Icons.dark_mode,
                          color: Colors.black,
                        )),
                    title: Text(
                      "Change Thame",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Card(
                  color: AppColors.cards,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Loginscrean()), (route) => false);
                    },
                    leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 54, 68, 73),
                        child: Icon(
                          Icons.login_rounded,
                          color: Colors.blue[300],
                        )),
                    title: Text(
                      "Logout",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
