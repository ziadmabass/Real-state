import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/core/elevatedButtoms.dart';
import 'package:the_real_state/core/materialbuttons.dart';
import 'package:the_real_state/veiw/home/widgets/cards.dart';
import 'package:the_real_state/veiw/owner_profile/ownerProfile.dart';

class Propertydetails extends StatelessWidget {
  Propertydetails({
    super.key,
    required this.image,
  });
  String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secandary,
      appBar: AppBar(
        backgroundColor: AppColors.secandary,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, color: AppColors.primary),
          color: Colors.white,
        ),
        title: Text(
          'Property Details',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: image,
                child: Cards(
                  images: image,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Ownerprofile()));
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.85,
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  child: Card(
                    color: AppColors.cards,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Image.asset('images/Home 01.jpg'),
                            title: Text(
                              'Malin Jack',
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text('Home Owner/Broker',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 12)),
                          ),
                          Text(
                            'At the end of the day, we want a home the matches our lifestyle.RE/MAX knows that and promises clients their agent are ready and waiting to help find the perfect fit.',
                            style: TextStyle(color: Colors.white),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Amenities',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_drop_down_outlined)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Interior Details',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_drop_down_outlined)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Construction Details',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_drop_down_outlined)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Location Map & Details',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_drop_down_outlined)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Materialbuttons(
                    text: 'Location Map',
                    ButtonColor: Colors.deepOrange,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                  Spacer(),
                  Materialbuttons(
                    text: 'Hospital',
                    ButtonColor: AppColors.secandary,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                  Spacer(),
                  Materialbuttons(
                    text: 'School',
                    ButtonColor: AppColors.secandary,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.8,
                height: MediaQuery.sizeOf(context).height * 0.4,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(30)),
                 image: DecorationImage(
                   fit: BoxFit.fill,
                   image: AssetImage('images/map.jpg'),
                 ),
               )
                          ),
              
            ],
          ),
        ),
      ),
      
      bottomNavigationBar: BottomAppBar(
        color: AppColors.secandary,
        child:  Elevatedbuttoms(
          textElv: 'Save',
          onpressedElv: () {},
          width: MediaQuery.sizeOf(context).width * 0.7,
          height: 60),
       ),
    );
  }
}
