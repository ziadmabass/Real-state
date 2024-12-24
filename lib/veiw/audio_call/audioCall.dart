import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';

class Audiocall extends StatelessWidget {
   Audiocall({super.key,required this.image,required this.name});
  String image;
  String name;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.fill,filterQuality: FilterQuality.values[3])),
          ),
          Positioned(
              left: 50,
              top: 50,
              child: Container(
                  width: 50,
                  height: 50,
                  child: Card(
                      color: AppColors.cards,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_new,
                            color: Colors.white, size: 20),
                      )))),
          Positioned(
              left: MediaQuery.sizeOf(context).width / 2 - 50,
              top: MediaQuery.sizeOf(context).height / 2 -100,
              child: Column(
                children: [
                  Text(
                    'Audio Call with',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.fill),
                    ),
                  ),
                   Text(
                  name,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  '10:12',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 25,
                ),
                ],
              )),
          Positioned(
            top: 600,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              padding: EdgeInsets.all(20),
              child: Column(children: [
               
                Row(
                  children: [
                    Spacer(),
                    Container(
                      height: 70,
                      width: 70,
                      child: Card(
                          color: AppColors.cards,
                          child: Icon(
                            Icons.mic,
                            color: Colors.green,
                          )),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Card(
                            color: Colors.red,
                            child: Icon(
                              Icons.call,
                              color: Colors.white,
                            )),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 70,
                      width: 70,
                      child: Card(
                          color: AppColors.cards,
                          child: Icon(
                            Icons.video_call_sharp,
                            color: Colors.green,
                          )),
                    ),
                    Spacer(),
                  ],
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
