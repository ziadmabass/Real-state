import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';

class Cards extends StatelessWidget {
  Cards({
    super.key,
    required this.images,
  });
  String images;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*0.85,
      height: 400,
      child: Card(
        color: AppColors.cards,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            Container(
              width: MediaQuery.sizeOf(context).width*0.85,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(images),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Apartment',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Spacer(),
                Text(
                  ' \$2909000',style: TextStyle(color:AppColors.primary, fontSize: 20),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 15,
                ),
                Text(
                  '2BW Street NY , New York',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                Spacer(),
                Text(
                  '2000sqft',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.bed,
                  color: Colors.red,
                  size: 15,
                ),
                Text(
                  '4 Beds',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
               Spacer(),
                Icon(
                  Icons.bathtub,
                  color: Colors.red,
                  size: 15,
                ),
                Text(
                  '3 Baths',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                Spacer(),
                 Icon(
                  Icons.kitchen,
                  color: Colors.red,
                  size: 15,
                ),
                Text(
                  '1 Kitchen',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
