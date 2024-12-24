import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/veiw/all_builders/allBuilder.dart';
import 'package:the_real_state/veiw/chat/chatScraen.dart';
import 'package:the_real_state/veiw/home/homeScraen.dart';
import 'package:the_real_state/veiw/saved_property/savedProperty.dart';
import 'package:the_real_state/veiw/setting/setting.dart';


class MainLayout extends StatefulWidget {
  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions =[
      Homescraen(),
      Savedproperty(),
      Allbuilder(),
      Chatscraen(),
      Setting()
    ];
    return  Scaffold(
        backgroundColor: AppColors.secandary,
        body: _widgetOptions.elementAt(_selectedIndex),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _onItemTapped(2), 
          child: Icon(Icons.apps,color:Colors.white,size: 30),
          backgroundColor: AppColors.primary,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: AppColors.secandary,
          shape: CircularNotchedRectangle(),
          notchMargin: 9.0,
          child: Container(
            height: 90.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.home_sharp,
                        size: 26,
                      ),
                      color:
                          _selectedIndex == 0 ? AppColors.primary : Colors.grey,
                      onPressed: () => _onItemTapped(0),
                    ),
                    SizedBox(width: 40),
                    IconButton(
                      icon: Icon(Icons.bookmark_outline, size: 26),
                      color:
                          _selectedIndex == 1 ? AppColors.primary : Colors.grey,
                      onPressed: () => _onItemTapped(1),
                    ),
                  ],
                ),
               
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(Icons.chat_sharp, size: 26),
                      color:
                          _selectedIndex == 3 ? AppColors.primary : Colors.grey,
                      onPressed: () => _onItemTapped(3),
                    ),
                    SizedBox(width: 40),
                    IconButton(
                      icon: Icon(Icons.settings_outlined, size: 26),
                      color:
                          _selectedIndex == 4 ? AppColors.primary : Colors.grey,
                      onPressed: () => _onItemTapped(4),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
  }
}
