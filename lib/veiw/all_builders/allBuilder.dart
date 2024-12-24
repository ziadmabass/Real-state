import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/veiw/all_builders/widgets/profile.dart';
import 'package:the_real_state/veiw/builder_profile/builderProfile.dart';

class Allbuilder extends StatelessWidget {
  Allbuilder({super.key});
  List<Map> data=[
    {
      "image": "images/ziad.jpg",
      "name": "زياد",
    }, {
      "image": "images/ziad1.jpg",
      "name": "المعلم زياد",
    }, {
      "image": "images/ziad2.jpg",
      "name": "زياد محمد",
    }, {
      "image": "images/ziad3.jpg",
      "name": "زياد بردو",
    }, {
      "image": "images/ziad4.jpg",
      "name": "يعم ماشي",
    },
  ];
  List<Map> data2=[
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secandary,
      appBar: AppBar(
        backgroundColor: AppColors.secandary,
        title: Text("All Builders",style: TextStyle(color: Colors.white),),
        
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
            width: double.infinity,
            height: double.infinity,
            color: AppColors.secandary,
            child: Column(
              children: [
                SearchBar(
                  backgroundColor: WidgetStatePropertyAll(AppColors.cards),
                  hintText: '',
                  hintStyle:
                      WidgetStatePropertyAll(TextStyle(color: Colors.grey)),
                  leading: Icon(
                    Icons.search,
                    color: AppColors.primary,
                  ),
                  textStyle:
                      WidgetStatePropertyAll(TextStyle(color: Colors.white)),
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 600,
                  child: ListView.builder(
                    itemCount: data.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Profile(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Builderprofile(image: data[index]['image'],name: data[index]['name'],)));
                            },
                            image: data[index]['image'],
                            name: data[index]['name'],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      );
                    }
                  ),
                )
              ],
            )),
      ),
    );
  }
}
