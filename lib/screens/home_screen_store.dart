import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gemstore/screens/discover_screen.dart';
import 'package:gemstore/screens/home_page.dart';
import 'package:gemstore/screens/my_order_screen.dart';
import 'package:gemstore/screens/user_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

class home_screen_store extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return home_screen_storeState();
  }
}

class home_screen_storeState extends State<home_screen_store> {

       
    
     List<Widget> screens = [
    home_page(),
    discover_store(),
    order_screen(),
    user_screen(),
  ];
  List<String> title=[
    "Gemstore",
    "Discover",
    "My Orders",
    "My Profile",
  ];

 int currentIndex = 0;           
 
  @override
  Widget build(BuildContext context) {


    return Scaffold(
     
      body:  screens[currentIndex],
      bottomNavigationBar: GNav(
           
          color: Colors.grey,
          activeColor: Colors.black,
          gap: 8,
          iconSize: 30,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          tabs: [
            GButton(
              icon: LineIcons.home,
            ),
            GButton(
              icon: LineIcons.search,
            ),
            GButton(
              icon: LineIcons.shoppingBag,
            ),
            GButton(
              icon: LineIcons.user,
            )
          ]
          ,
          selectedIndex: currentIndex,
          onTabChange: (index) {
          setState(() {
            currentIndex= index;
          });
          },
               
          )
          
    );
  }
}

