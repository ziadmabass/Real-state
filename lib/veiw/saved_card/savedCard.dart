import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/core/materialbuttons.dart';
import 'package:fl_chart/fl_chart.dart';

class Savedcard extends StatefulWidget {
  const Savedcard({super.key});

  @override
  State<Savedcard> createState() => _SavedcardState();
}

class _SavedcardState extends State<Savedcard> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  List<FlSpot> _data = [
    FlSpot(1, 1),
    FlSpot(3, 1.5),
    FlSpot(5, 1.7),
  ];

  final List<String> cardList = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.secandary,
        appBar: AppBar(
          backgroundColor: AppColors.secandary,
          title: Text(
            'Saved Card',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
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
        body: Container(
          color: AppColors.secandary,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(50),
                height: MediaQuery.of(context).size.height * 0.32,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage('images/visa3-removebg-preview.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage('images/visa1-removebg-preview.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage('images/visa2-removebg-preview.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.cards,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        
                        Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.08,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Card(
                            color: Color.fromARGB(255, 14, 14, 25),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Materialbuttons(
                                      text: 'Expanses',
                                      ButtonColor: Colors.deepOrangeAccent,
                                      textColor: Colors.white,
                                      onPressed: () {}),
                                  Spacer(),
                                  Materialbuttons(
                                      text: 'incoming',
                                      ButtonColor:
                                          Color.fromARGB(255, 14, 14, 25),
                                      textColor: Colors.white,
                                      onPressed: () {}),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 39, 48, 40)),
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.paypal_outlined,
                              color: Colors.green,
                            ),
                          ),
                          title: Text(
                            'Pay Builder',
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            'jan 9,2020',
                            style: TextStyle(color: Colors.grey),
                          ),
                          trailing: Text(
                            '\$142',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 45, 48, 39)),
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.add_home_sharp,
                              color: Colors.yellow,
                            ),
                          ),
                          title: Text(
                            'Rent house',
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            'jan 4,2020',
                            style: TextStyle(color: Colors.grey),
                          ),
                          trailing: Text(
                            '\$151',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 55, 51, 36)),
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.person_3_rounded,
                              color: Colors.orange,
                            ),
                          ),
                          title: Text(
                            'Broker',
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            'jan 2,2020',
                            style: TextStyle(color: Colors.grey),
                          ),
                          trailing: Text(
                            '\$142',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 43, 46, 57)),
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.other_houses_rounded,
                              color: Colors.blue,
                            ),
                          ),
                          title: Text(
                            'Buy house',
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            'jan 1,2020',
                            style: TextStyle(color: Colors.grey),
                          ),
                          trailing: Text(
                            '\$5151',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
