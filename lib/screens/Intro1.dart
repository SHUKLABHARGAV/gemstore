import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gemstore/screens/signup_screen.dart';
import 'package:gemstore/screens/slider_demo_screen.dart';
import 'package:gemstore/utils/color_helper.dart';
import 'package:sizer/sizer.dart';

class Intro1 extends StatefulWidget {
  const Intro1({super.key});

  @override
  State<Intro1> createState() {
    return _Intro1State();
  }
}

class _Intro1State extends State<Intro1> {
  @override
  Widget build(BuildContext context) {
 

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  width: 100.w,
                  color: Colorhelper.White,
                  child: Column(
                    //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colorhelper.intro,
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            height: 80.h,
            width: 100.w,
            child: CarouselWithIndicatorDemo(),

          ),
           
          Positioned(
            bottom: 12.h,
            child: SizedBox(
              width: 22.h,
              height: 6.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.withOpacity(0.8),
                    side: const BorderSide(
                      color: Colorhelper.White,
                    )),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Signup()),
                  );
                },
                child: Text(
                  "Shopping now",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colorhelper.White,
                      fontSize: 11.sp),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  // Widget buildIndicator(bool isSelected) {
  //   return Container(
  //     height:  isSelected ? 12:10,
  //     width:  isSelected ? 12:10,
  //     decoration: BoxDecoration(
  //       shape: BoxShape.circle,
  //       color: isSelected ? Colors.black:Colors.white,
  //     ),
  //   );
  // }
}
