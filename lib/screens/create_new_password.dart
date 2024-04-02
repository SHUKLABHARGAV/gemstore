import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gemstore/screens/login_scrreen.dart';
import 'package:gemstore/screens/otp_verification.dart';
import 'package:gemstore/screens/password_change_popup.dart';
import 'package:gemstore/utils/color_helper.dart';
import 'package:sizer/sizer.dart';

class create_new_password extends StatelessWidget {
  const create_new_password({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.h),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.h,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colorhelper.White,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(blurRadius: 1, offset: Offset.zero)
                      ]),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const otp_verification()),
                      );
                    },
                    icon: Icon(Icons.arrow_back_ios_rounded),
                  ),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create new password",
                      style: TextStyle(fontFamily: "Product", fontSize: 20.sp),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Your new password must be different from previously used password",
                      style: TextStyle(
                          fontFamily: 'Product-Light', fontSize: 12.sp),
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Form(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "New Password",
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.visibility_off))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Confirm Password",
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.visibility))),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 6.h,
                  width: 35.w,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colorhelper.btn),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              color: Colorhelper.White,
                              height: 35.h,
                              width: 100.h,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.h),
                                    child: CircleAvatar(
                                      backgroundColor: Colorhelper.popupbg,
                                        radius: 5.h,
                                        child: Center(
                                          child: Image.asset(
                                              "assets/Images/Success.png"),
                                        )),
                                  ),
                                  Text(
                                    "Your password has been changed",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text("Welcome back! Discover now!",style: TextStyle(
                                    color: Colors.grey
                                  ),),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  SizedBox(
                                    width: 60.w,
                                    height: 6.h,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.black),
                                        onPressed: () {
                                          Navigator.pushReplacement(context, 
                                            MaterialPageRoute(builder: (context) => login()),
                                          );
                                        },
                                        child: Text(
                                          "Brouse home",
                                          style: TextStyle(
                                              color: Colorhelper.White),
                                        )),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        "Confirm",
                        style: TextStyle(color: Colorhelper.White),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
