import 'package:flutter/material.dart';
import 'package:gemstore/screens/create_new_password.dart';
import 'package:gemstore/screens/login_scrreen.dart';
import 'package:gemstore/utils/color_helper.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

class otp_verification extends StatelessWidget {
  const otp_verification({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:  SingleChildScrollView(
        child: Padding(
           padding:EdgeInsets.symmetric( horizontal: 4.h),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                Padding(
                  padding:EdgeInsets.symmetric(vertical: 8.h,),
                  child: Container(
                   decoration: BoxDecoration(
                    color: Colorhelper.White,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                      blurRadius: 1,
                      offset: Offset.zero
                    )]
                   ),
                    
                    child: IconButton(
                      onPressed: () {
                         Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const login()),
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
                      Text("Verification code",
                      style: TextStyle(
                        fontFamily: "Product",
                        fontSize: 24.sp
                      ),),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text("Please enter the verification code we sent to your email address",
                      style: TextStyle(
                        fontFamily: 'Product-Light',
                        fontSize: 12.sp
                      ),
                      textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                ),
                 Padding(
                   padding: EdgeInsets.symmetric(vertical: 3.h),
                   child: Pinput(
                    length: 4,
                    validator: (s) {
            return s == '2222' ? 'pin is correct' : 'Pin is incorrect';
          },
                     defaultPinTheme: PinTheme(
                      height: 18.h,
                      width: 18.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black)
                      )
                     ),
                    
                   ),
                 ),
                Container(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colorhelper.btn
                    ),
                    onPressed: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => create_new_password()),
                    );
                  }, 
                  child: Text("Next",style: TextStyle(color: Colorhelper.White),)
                  ),
                )
              ],
            ),
          ),
      ),

    );
  }
}
