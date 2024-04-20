import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gemstore/screens/discover_banner.dart';
import 'package:gemstore/screens/search_screen.dart';
import 'package:gemstore/utils/color_helper.dart';

import 'package:sizer/sizer.dart';

class discover_store extends StatelessWidget {
  const discover_store({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Discover"),
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: "Product",
              letterSpacing: 1.sp),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          actions: [Icon(Icons.notifications_none_rounded)],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
            
                  SizedBox(
                    width: 78.w,
                    child: FloatingActionButton(
                      backgroundColor: Color(0xffFAFAFA),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.search,
                            color: Color(0xff777E90)),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text("Search",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Color(0xff777E90)
                            ),)
                          ],
                        ),
                      ),
                        onPressed: () {
                        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Search_screen()),
  );
                        },
                       ),
                  ),
                    Container(
                      height: 6.h,
                      width: 13.w,
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(blurRadius: 0.2)],
                        color: Colorhelper.White,
                        border: Border.all(color: Color(0xffFAFAFA)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.tune,
                        color: Colorhelper.discover_icon,
                        size: 4.h,
                      ),
                    ),
                  ],
                ),
              ),
              Discover_banner(),
            ],
          ),
        ));
  }
}
