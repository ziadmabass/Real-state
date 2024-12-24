import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/core/elevatedButtoms.dart';
import 'package:the_real_state/veiw/get_schedule/widgets/myTextFeild.dart';

class Getschedulescrean extends StatefulWidget {
  const Getschedulescrean({super.key});

  @override
  State<Getschedulescrean> createState() => _GetschedulescreanState();
}

class _GetschedulescreanState extends State<Getschedulescrean> {
  bool isChecked= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secandary,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.secandary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )),
          child: Column(
            children: [
              Text(
                'Get Schedule',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    'Title',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Mytextfeild(
                text: 'Meeting Name',
              ),
              Row(
                children: [
                  Text(
                    'Choose Date',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                    color: AppColors.cards,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Container(
                          width: MediaQuery.sizeOf(context).width * 0.7,
                          child: Mytextfeild(
                            text: '5 jan 2021',
                          )),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.calendar_month,
                            color: AppColors.primary,
                          ))
                    ],
                  )),
              Row(children: [
                Text(
                  'Start Time',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.32,
                ),
                Text(
                  'End Time',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ]),
              Row(
                children: [
                  Container(
                      height: MediaQuery.sizeOf(context).height * 0.05,
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      decoration: BoxDecoration(
                        color: AppColors.cards,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Text(
                            '11:30 AM',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(
                            Icons.watch_later,
                            color: AppColors.primary,
                          )
                        ],
                      )),
                      Spacer(),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.05,
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      decoration: BoxDecoration(
                        color: AppColors.cards,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Text(
                            '11:30 AM',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(
                            Icons.watch_later,
                            color: AppColors.primary,
                          )
                        ],
                      )),
                      
                ],
              ),
              Row(children: [
                        Checkbox(value: isChecked, onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                        Text('Notify me',style: TextStyle(color: Colors.grey),)
                      ],),
                      Elevatedbuttoms(textElv: 'Ask for Schedule', onpressedElv: (){}, width: MediaQuery.sizeOf(context).width, height: 70)
            ],
          ),
        ),
      ),
    );
  }
}
