import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gemstore/classes/HomeSidebar.dart';
import 'package:gemstore/classes/profile.dart';
import 'package:gemstore/screens/profile_setting.dart';
import 'package:gemstore/screens/sidebarDrawer.dart';
import 'package:sizer/sizer.dart';

class user_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _user_screenState();
  }
}

class _user_screenState extends State<user_screen> {
  List<Profile> profileData = [
    Profile(
        id: 1,
        profileIcon: Icon(
          Icons.location_on,
          color: Color(0xffB1B5C3),
        ),
        profileTitle: "Address"),
    Profile(
        id: 2,
        profileIcon: Icon(Icons.wallet_rounded, color: Color(0xffB1B5C3)),
        profileTitle: "Payment Method"),
    Profile(
        id: 3,
        profileIcon: Icon(Icons.discount, color: Color(0xffB1B5C3)),
        profileTitle: "Voucher"),
    Profile(
        id: 4,
        profileIcon: Icon(Icons.favorite, color: Color(0xffB1B5C3)),
        profileTitle: "My Whishlist"),
    Profile(
        id: 5,
        profileIcon: Icon(
          Icons.star_rate_rounded,
          color: Color(0xffB1B5C3),
        ),
        profileTitle: "Rate this app"),
    Profile(
        id: 6,
        profileIcon: Icon(Icons.logout, color: Color(0xffB1B5C3)),
        profileTitle: "Log out"),
  ];
  List<Home_sidebar> sidebarIteam = [
    Home_sidebar(
        id: 1, sidebarIcon: Icon(Icons.home), sidebarTitle: "Homepage"),
    Home_sidebar(
        id: 2, sidebarIcon: Icon(Icons.search), sidebarTitle: "Discover"),
    Home_sidebar(
        id: 3, sidebarIcon: Icon(Icons.shopping_bag), sidebarTitle: "My Order"),
    Home_sidebar(
        id: 4, sidebarIcon: Icon(Icons.person), sidebarTitle: "My profile"),
    Home_sidebar(id: 5, sidebarTitle: "OTHER"),
    Home_sidebar(
        id: 6, sidebarIcon: Icon(Icons.settings), sidebarTitle: "Setting"),
    Home_sidebar(
        id: 7, sidebarIcon: Icon(Icons.email), sidebarTitle: "Support"),
    Home_sidebar(
        id: 8, sidebarIcon: Icon(Icons.info), sidebarTitle: "About us"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sidebarDrawer(sidebarIteam: sidebarIteam),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/Images/profile_image.png"),
                    radius: 35,
                  ),
                  // Container(

                  //   height:15.h,
                  //   width: 5.h,
                  //   decoration: BoxDecoration(
                  //   shape: BoxShape.circle,
                  //   image: DecorationImage(image: AssetImage(,))
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sunie Pham",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "sunieux@gmail.com",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => profileSetting(),));
                    },
                    child: Icon(
                      Icons.settings,
                      size: 35,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurStyle: BlurStyle.outer, blurRadius: 0.5)
                    ],
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListView.builder(
                    padding: EdgeInsets.all(2),
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            tileColor: Colors.white,
                            leading: profileData[index].profileIcon,
                            title: Text(
                              profileData[index].profileTitle,
                              style: TextStyle(fontFamily: 'Product'),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          Divider(color: Colors.black),
                        ],
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
