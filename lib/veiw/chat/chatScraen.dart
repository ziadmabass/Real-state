import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/veiw/chat/widget/listtile.dart';
import 'package:the_real_state/veiw/indevidule_chat/indeviduleChat.dart';

class Chatscraen extends StatefulWidget {
  const Chatscraen({super.key});

  @override
  State<Chatscraen> createState() => _ChatscraenState();
}

class _ChatscraenState extends State<Chatscraen> {
  List<Map> data = [
    {
      'image': 'images/hmpol.jpg',
      'name': 'hmpola',
    },
    {
      'image': 'images/ziad.jpg',
      'name': 'Zozz',
    },
    {
      'image': 'images/tom.jpg',
      'name': 'Tom',
    },
    {
      'image': 'images/ziad1.jpg',
      'name': 'ziad',
    },
    {
      'image': 'images/ziad5.jpg',
      'name': 'Elka2ed',
    },
    {
      'image': 'images/ziad2.jpg',
      'name': 'Ziad brdo',
    },
    {
      'image': 'images/ziad3.jpg',
      'name': 'Ziad tani',
    },
    {
      'image': 'images/ziad4.jpg',
      'name': '3mo Ziad',
    },
    {
      'image': 'images/ziad6.jpg',
      'name': 'Elz3ama',
    },
    {
      'image': 'images/ziad7.jpg',
      'name': 'Eltnen',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secandary,
        elevation: 0,
        title: Text(
          "Masseges",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.secandary,
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: SearchBar(
                      backgroundColor: WidgetStatePropertyAll(AppColors.cards),
                      hintText: 'Search...',
                      hintStyle:
                          WidgetStatePropertyAll(TextStyle(color: Colors.grey)),
                      leading: Icon(
                        Icons.search,
                        color: AppColors.primary,
                      ),
                      textStyle: WidgetStatePropertyAll(
                          TextStyle(color: Colors.white)),
                      onChanged: (value) {},
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.mode_outlined,
                    color: Colors.green,
                    size: 30,
                  ),
                ],
              ),
              MyListTile(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Indevidulechat(
                                image: data[0]['image'],
                                name: data[0]['name'],
                              ))),
                  image: data[0]['image'],
                  name: data[0]['name'],
                  massege: 'hmmmmmmmmmmmm',
                  time: '1:00 pm'),
              SizedBox(
                height: 10,
              ),
              MyListTile(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Indevidulechat(
                                image: data[1]['image'],
                                name: data[1]['name'],
                              ))),
                  image: data[1]['image'],
                  name: data[1]['name'],
                  massege: 'Okay, I will call you',
                  time: '1:00 pm'),
              SizedBox(
                height: 10,
              ),
              MyListTile(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Indevidulechat(
                                image: data[2]['image'],
                                name: data[2]['name'],
                              ))),
                  image: data[2]['image'],
                  name: data[2]['name'],
                  massege: 'What do you want to do?',
                  time: '1:00 pm'),
              SizedBox(
                height: 10,
              ),
              MyListTile(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Indevidulechat(
                                image: data[3]['image'],
                                name: data[3]['name'],
                              ))),
                  image: data[3]['image'],
                  name: data[3]['name'],
                  massege: 'is it big enough for you',
                  time: '1:00 pm'),
              SizedBox(
                height: 10,
              ),
              MyListTile(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Indevidulechat(
                                image: data[4]['image'],
                                name: data[4]['name'],
                              ))),
                  image: data[4]['image'],
                  name: data[4]['name'],
                  massege: 'fekhma fekhma fekhma akhr fkhama',
                  time: '1:00 pm'),
              SizedBox(
                height: 10,
              ),
              MyListTile(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Indevidulechat(
                                image: data[5]['image'],
                                name: data[5]['name'],
                              ))),
                  image: data[5]['image'],
                  name: data[5]['name'],
                  massege: 'Okay, I will call you',
                  time: '1:00 pm'),
              SizedBox(
                height: 10,
              ),
              MyListTile(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Indevidulechat(
                                image: data[6]['image'],
                                name: data[6]['name'],
                              ))),
                  image: data[6]['image'],
                  name: data[6]['name'],
                  massege: 'haseb ya z3em',
                  time: '1:00 pm'),
              SizedBox(
                height: 10,
              ),
              MyListTile(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Indevidulechat(
                                image: data[7]['image'],
                                name: data[7]['name'],
                              ))),
                  image: data[7]['image'],
                  name: data[7]['name'],
                  massege: 'ht3wrna ya z3em',
                  time: '1:00 pm'),
              SizedBox(
                height: 10,
              ),
              MyListTile(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Indevidulechat(
                                image: data[8]['image'],
                                name: data[8]['name'],
                              ))),
                  image: data[8]['image'],
                  name: data[8]['name'],
                  massege: 'ksklya',
                  time: '1:00 pm'),
              SizedBox(
                height: 10,
              ),
              MyListTile(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Indevidulechat(
                                image: data[9]['image'],
                                name: data[9]['name'],
                              ))),
                  image: data[9]['image'],
                  name: data[9]['name'],
                  massege: 'dracares',
                  time: '1:00 pm'),
            ],
          ),
        ),
      ),
    );
  }
}
