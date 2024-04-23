import 'package:flutter/material.dart';
import 'package:gemstore/screens/user_screen.dart';
import 'package:sizer/sizer.dart';


class profileSetting extends StatelessWidget {
  const profileSetting({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body:  Column(
        children: [
          GestureDetector(
                  onTap: () {
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  user_screen()),
  );
                  },
                  child: Container(
                      height: 5.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffFFFFFF),
                          boxShadow: [
                            BoxShadow(blurRadius: 0.2, offset: Offset(0.7, 0.7))
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                        ),
                      )),
                ),
        ],
      )
    );
  }
}
