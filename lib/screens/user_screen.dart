import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gemstore/classes/HomeSidebar.dart';
import 'package:gemstore/classes/profile.dart';
import 'package:gemstore/screens/mywhishlistscreen.dart';
import 'package:gemstore/screens/paymentMode_screen.dart';
import 'package:gemstore/screens/profile_setting.dart';
import 'package:gemstore/screens/ratingthisapp.dart';
import 'package:gemstore/screens/sidebarDrawer.dart';
import 'package:gemstore/screens/customeUserprofile.dart';
import 'package:gemstore/screens/useraddress.dart';
import 'package:gemstore/screens/uservoucher.dart';
import 'package:sizer/sizer.dart';

class user_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _user_screenState();
  }
}

class _user_screenState extends State<user_screen> {
  
  List<Home_sidebar> sidebarIteam = [
    Home_sidebar(
        id: 1, sidebarIcon: const Icon(Icons.home), sidebarTitle: "Homepage"),
    Home_sidebar(
        id: 2, sidebarIcon: const Icon(Icons.search), sidebarTitle: "Discover"),
    Home_sidebar(
        id: 3, sidebarIcon: const Icon(Icons.shopping_bag), sidebarTitle: "My Order"),
    Home_sidebar(
        id: 4, sidebarIcon: const Icon(Icons.person), sidebarTitle: "My profile"),
    Home_sidebar(id: 5, sidebarTitle: "OTHER"),
    Home_sidebar(
        id: 6, sidebarIcon: const Icon(Icons.settings), sidebarTitle: "Setting"),
    Home_sidebar(
        id: 7, sidebarIcon: const Icon(Icons.email), sidebarTitle: "Support"),
    Home_sidebar(
        id: 8, sidebarIcon: const Icon(Icons.info), sidebarTitle: "About us"),
  ];
  
  get profileData => null;

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
                  const CircleAvatar(
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
                    child: const Column(
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
                      Navigator.push(context, MaterialPageRoute(builder:(context) => const profileSetting(),));
                    },
                    child: const Icon(
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
                    boxShadow: const [
                      BoxShadow(blurStyle: BlurStyle.outer, blurRadius: 0.5)
                    ],
                    borderRadius: BorderRadius.circular(15)),
                child:  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child:  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => userAddress(),));
                        },
                        child: customUserprofile(profileIcon: Icons.location_on,profileText: "Address",)),
                    
                      GestureDetector(
                         onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => modeScreen(),));
                        },
                        child: customUserprofile(profileIcon: Icons.wallet_rounded,profileText: "Payment method")),
                      GestureDetector(
                        onTap: () {
                                                    Navigator.push(context,MaterialPageRoute(builder: (context) => Uservoucher(),));

                        },
                        child: customUserprofile(profileIcon: Icons.local_activity,profileText: "Voucher")),
                      GestureDetector(
                        onTap: () {
                             Navigator.push(context,MaterialPageRoute(builder: (context) => MyWishlistscreen(),));
                        },
                        child: customUserprofile(profileIcon: Icons.favorite,profileText: "My Wishlist")),
                      GestureDetector(
                         onTap: () {
                                                    Navigator.push(context,MaterialPageRoute(builder: (context) => RatethisApp(),));

                        },
                        child: customUserprofile(profileIcon: Icons.star_rate_rounded,profileText: "Rate this app")),
                      customUserprofile(profileIcon: Icons.logout_outlined,profileText: "Log out"),
                    ],
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

