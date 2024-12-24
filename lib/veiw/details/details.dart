import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/core/elevatedButtoms.dart';
import 'package:the_real_state/core/materialbuttons.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:the_real_state/veiw/saved_card/savedCard.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
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
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('images/visa1-removebg-preview.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('images/visa2-removebg-preview.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('images/visa3-removebg-preview.png'),
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
                        Row(
                          children: [
                            Text(
                              'Transaction Details',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 100,
                          child: Card(
                            color: Color.fromARGB(255, 14, 14, 25),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Column(children: [
                                    Text(
                                      'Total',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '\$6,879',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                                  Spacer(),
                                  Divider(
                                    thickness: 10,
                                    color: Colors.grey,
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_upward,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                  Text(
                                    '\$2,872',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Divider(
                                    thickness: 10,
                                    color: Colors.grey,
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_downward,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                  Text(
                                    '\$4,872',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.25,
                              child: LineChart(
                                LineChartData(
                                  lineTouchData: LineTouchData(enabled: false),
                                  lineBarsData: [
                                    LineChartBarData(
                                      spots: _data,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Text('Statistics',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      Elevatedbuttoms(textElv: 'Show More', onpressedElv: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Savedcard()));
                      }, width: double.infinity, height: 50)
                        
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
