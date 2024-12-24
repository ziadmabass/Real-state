import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';

class Profile extends StatelessWidget {
   Profile({super.key,required this.name,required this.image,required this.onTap});
   List<String> images = [
    'images/proprty1.jpg',
    'images/proprty2.jpg',
    'images/proprty3.jpg',
    'images/proprty4.jpg',
  ];
  String name;
  String image;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              ListTile(
                onTap: onTap,
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.fill),
                  ),
                ),
                title: Text(
                  name,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                subtitle: Text(
                  'example@gmail.com',
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
                trailing: Image.asset('images/callbutton.jpg'),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView.builder(
                  itemCount: images.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                                image: AssetImage(images[index]), fit: BoxFit.fill)),
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ),
              )
            ],
          );
  }
}