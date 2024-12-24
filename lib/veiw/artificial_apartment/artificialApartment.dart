import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/veiw/get_schedule/getScheduleScrean.dart';

class Artificialapartment extends StatelessWidget {
  const Artificialapartment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.secandary,
        appBar: AppBar(
          backgroundColor: AppColors.secandary,
          elevation: 0,
          leading: IconButton(
            icon:
                const Icon(Icons.arrow_back_ios_new, color: AppColors.primary),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Artificial Apartment',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          actions: <Widget>[
            Container(
              width: 50,
              height: 50,
              child: Card(
                color: AppColors.cards,
                child: IconButton(
                  icon:
                      const Icon(Icons.save_rounded, color: AppColors.primary),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.grey,
                    size: 18,
                  ),
                  Text(
                    'NY,New york',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.40,
                width: MediaQuery.sizeOf(context).width * 0.85,
                child: Card(
                  color: AppColors.cards,
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.25,
                    width: MediaQuery.sizeOf(context).width * 0.70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/Builders Profile.jpg'),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text(
                      '\$2,500',
                      style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '/per 10 sqft',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(
                        left: 50,
                      ),
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: AppColors.primary,
                      ),
                      child: Row(children: [
                        Icon(
                          Icons.edit_square,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          'Edit Profile',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ]),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(children: [
                Spacer(),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Card(
                    color: AppColors.cards,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bed,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Card(
                    color: AppColors.cards,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bathroom,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Card(
                    color: AppColors.cards,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.soup_kitchen,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ]),
              SizedBox(
                height: 5,
              ),
              Row(children: [
                Spacer(),
                Text(
                  '4 Bedrooms',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Spacer(),
                Text(
                  '4 Bathrooms',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Spacer(),
                Text(
                  '2 Kitchen',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Spacer(),
              ]),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, top: 10, right: 20, bottom: 10),
                child: Column(
                  children: [
                    Text(
                      'Describtion the pattern of narrative development that aims to make vivid a place, object....',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/ziad5.jpg'))),
                ),
                title: Text(
                  'Ziad Mohamed',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                subtitle: Text('example@gmail.com'),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Spacer(),
                    InkWell(
                        child: Image.asset(
                      'images/massegebutton.jpg',
                      width: 100,
                      height: 100,
                    )),
                    Spacer(),
                    InkWell(
                      onTap: (){
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Getschedulescrean();
                          });
                      },
                        child: Image.asset('images/schedulebutton.jpg',
                            width: 100, height: 100)),
                    Spacer(),
                    InkWell(
                        child: Image.asset(
                      'images/callbutton.jpg',
                      width: 100,
                      height: 100,
                    )),
                    Spacer()
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
