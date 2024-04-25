import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gemstore/screens/customeUserprofile.dart';
import 'package:gemstore/screens/language_screen.dart';
import 'package:gemstore/screens/suportscreen.dart';
import 'package:sizer/sizer.dart';

class Setting_screen extends StatelessWidget {
  const Setting_screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(height: 8.h,),
            Padding(
                              padding: EdgeInsets.symmetric(horizontal:2.h),
                              child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                      
                                        
                                        GestureDetector(
                                          onTap: () {
                                         Navigator.pop(context);
                                          },
                                          child: Container(
                                              height: 5.h,
                                              decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xffFFFFFF),
                                                  boxShadow: [
                                                    BoxShadow(blurRadius: 0.2, offset: Offset(0.7, 0.7))
                                                  ]),
                                              child: const Padding(
                                                padding: EdgeInsets.only(left: 8.0),
                                                child: Icon(
                                                  Icons.arrow_back_ios,
                                                  size: 30,
                                                ),
                                              )),
                                        ),
                                        
                                          
                                        Text(
                                          "Setting",
                                          style: TextStyle(fontSize: 15.sp),
                                        ),
                                           Text(
                                          " ",
                                          style: TextStyle(fontSize: 15.sp),
                                        ),
                                       
                                      ],
                                    ),
                            ),
                      SizedBox(height: 7.h,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:  2.h),
                        child: Column(
                                            children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Language_screen(),));
                          },
                          child: customUserprofile(profileIcon: Icons.language,profileText: "Language",)),
                                            
                        GestureDetector(
                           onTap: () {
                            // Navigator.push(context,MaterialPageRoute(builder: (context) => (),));
                          },
                          child: customUserprofile(profileIcon: Icons.notifications_none,profileText: "Notification")),
                        GestureDetector(
                          onTap: () {
                                                      // Navigator.push(context,MaterialPageRoute(builder: (context) => Uservoucher(),));
                        
                          },
                          child: customUserprofile(profileIcon: Icons.assignment_outlined,profileText: "Terms of use")),
                        customUserprofile(profileIcon: Icons.info_outline,profileText: "Privacy Policy"),
                        
                        GestureDetector(
                          onTap: () {
                                   Navigator.push(context,MaterialPageRoute(builder: (context) => Support_screen(),));
                          },
                          child: customUserprofile(profileIcon: Icons.near_me_rounded,profileText: "Chat support")),
                                            ],
                                          ),
                      ),
                             
                             
               
    
          ],
        ),
      ),
    );
  }
}
