import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/core/materialbuttons.dart';
import 'package:the_real_state/veiw/filter_scraen/filterScraen.dart';
import 'package:the_real_state/veiw/home/widgets/cards.dart';
import 'package:the_real_state/veiw/property_details/propertyDetails.dart';

class Homescraen extends StatelessWidget {
  const Homescraen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> data = [
      {
        "image": "images/Image (1).png",
        "title": "Apartment       \$2909000",
      },
      {
        "image": "images/dd1cc38664f04fa5ecb8c50db237c7e1.jpg",
        "title": "Apartment       \$2909000",
      },
      {
        "image": "images/16d58201a3ddc1ca12bb92d3fb32e455.jpg",
        "title": "Apartment       \$2909000",
      },
      {
        "image": "images/Image (4).png",
        "title": "Apartment       \$2909000",
      },
      {
        "image": "images/Image (6).png",
        "title": "Apartment       \$2909000",
      },
      {
        "image": "images/Image (7).png",
        "title": "Apartment       \$2909000",
      },
    ];
    List<Map> data2 = [
      {
        "image": "images/proprty6.jpg",
        "title": "Apartment       \$2909000",
      },
      {
        "image": "images/proprty2.jpg",
        "title": "Apartment       \$2909000",
      },
      {
        "image": "images/proprty3.jpg",
        "title": "Apartment       \$2909000",
      },
      {
        "image": "images/proprty4.jpg",
        "title": "Apartment       \$2909000",
      },
      {
        "image": "images/proprty5.jpg",
        "title": "Apartment       \$2909000",
      },
    ];
    return Scaffold(
      backgroundColor: AppColors.secandary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Hello!",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  subtitle: Text(
                    "باشا البلد!",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  trailing: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("images/hmpol.jpg"),
                      )
                    )
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      child: Card(
                        color: AppColors.cards,
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIconColor: AppColors.primary,
                              hintStyle: TextStyle(color: Colors.grey[400]),
                              hintText: "Search...",
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.search),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Filterscraen();
                            });
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.2,
                        height: 50,
                        child: Card(
                          color: AppColors.primary,
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.filter_list,
                                  color: Colors.white,
                                ),
                                Text('Filter',
                                    style: TextStyle(color: Colors.white))
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Materialbuttons(
                      onPressed: () {},
                      text: 'House',
                      ButtonColor: Color.fromARGB(255, 247, 79, 79),
                      textColor: Colors.white,
                    ),
                    Spacer(),
                    Materialbuttons(
                      onPressed: () {},
                      text: 'Apartment',
                      ButtonColor: Color.fromARGB(255, 175, 79, 19),
                      textColor: Colors.white,
                    ),
                    Spacer(),
                    Materialbuttons(
                      onPressed: () {},
                      text: 'Office',
                      ButtonColor: Color.fromARGB(255, 33, 116, 32),
                      textColor: Colors.white,
                    ),
                    Spacer(),
                    Materialbuttons(
                      onPressed: () {},
                      text: 'Lands',
                      ButtonColor: Color.fromARGB(255, 24, 102, 170),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'All Property',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'See All',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.green,
                      size: 15,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Propertydetails(
                                        image: data[index]['image'],
                                      )));
                        },
                        child: Card(
                          color: AppColors.cards,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                width: 130,
                                child: Card(
                                    color: AppColors.cards,
                                    child: Container(
                                      width: 130,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image:
                                              AssetImage(data[index]['image']),
                                        ),
                                      ),
                                    )),
                              ),
                              Text(
                                data[index]['title'],
                                style:
                                    TextStyle(color: Colors.white, fontSize: 10),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.home_filled,
                                      color: Colors.red, size: 15),
                                  Text('2000sqft',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.bed, color: Colors.red, size: 15),
                                  Text('4',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.ac_unit_sharp,
                                      color: Colors.red, size: 15),
                                  Text('1',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10)),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Matched Properties',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'See All',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.green,
                      size: 15,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Propertydetails(
                                      image: data2[0]['image'],
                                    ))),
                        child: Hero(
                          tag:data2[0]['image'],
                          child: Cards(
                            images: data2[0]['image'],
                          ),
                        )),
                    InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Propertydetails(
                                      image: data2[1]['image'],
                                    ))),
                        child:Hero(
                          tag:data2[1]['image'],
                          child: Cards(
                            images: data2[1]['image'],
                          ),
                        )),
                    InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Propertydetails(
                                      image: data2[2]['image'],
                                    ))),
                        child: Hero(
                          tag: data2[2]['image'],
                          child: Cards(
                            images: data2[2]['image'],
                          ),
                        )),
                    InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Propertydetails(
                                      image: data2[3]['image'],
                                    ))),
                        child: Hero(
                          tag: data2[3]['image'],
                          child: Cards(
                            images: data2[3]['image'],
                          ),
                        )),
                    InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Propertydetails(
                                      image: data2[4]['image'],
                                    ))),
                        child: Hero(
                          tag: data2[4]['image'],
                          child: Cards(
                            images: data2[4]['image'],
                          ),
                        )),
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
