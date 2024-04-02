import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gemstore/screens/login_scrreen.dart';
import 'package:gemstore/utils/color_helper.dart';
import 'package:sizer/sizer.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
     String? validateEmail(String? value) {
  const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
      r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
      r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
      r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
      r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
      r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
      r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
  final regex = RegExp(pattern);

  return value!.isNotEmpty && !regex.hasMatch(value)
      ? 'Enter a valid email address'
      : null;
}
    

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 11.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.h,),
              child: Container(
              
                  height: 15.h,
                  // margin: EdgeInsets.symmetric(vertical: 15.h, horizontal: 2.h),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Create",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        "your account",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.h),
              child: Container(
                
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.h),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter your name",
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.h),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Email address",
                          ),
                           validator: validateEmail,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp("[0-9@a-zA-Z.]")),
                            
                          ],
                           autovalidateMode: AutovalidateMode.onUserInteraction,
                           
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.h),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.h),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Confirm password",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              height: 6.h,
              width: 15.h,
              child: ElevatedButton(
                onPressed: () {
                  print("object");
                },
                child: Text(
                  "SIGN UP",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  backgroundColor: Colorhelper.btn,
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              "or sign up with",
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontFamily: 'Product-Light',
                fontSize: 10.sp,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 6.h,
                    width: 6.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      shape: BoxShape.circle,
                      // color: Colors.amber
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.apple,
                        color: Color(0xff332218),
                        size: 45,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 6.h,
                    width: 6.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Colors.amber
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        "assets/Images/google.svg",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 6.h,
                    width: 6.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      shape: BoxShape.circle,
                      // color: Colors.amber
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        "assets/Images/facebook.svg",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have account?",
                  style: TextStyle(fontSize: 12.sp),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const login()),
                  );
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 11.sp,
                          decoration: TextDecoration.underline),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
