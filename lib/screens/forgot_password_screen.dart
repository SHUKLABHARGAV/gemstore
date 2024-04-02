import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gemstore/screens/login_scrreen.dart';
import 'package:gemstore/screens/otp_verification.dart';
import 'package:gemstore/utils/color_helper.dart';
import 'package:sizer/sizer.dart';

class forgot_password extends StatelessWidget {
  const forgot_password({Key? key}) : super(key: key);
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
                    Text("Forgot password?",
                    style: TextStyle(
                      fontFamily: "Product",
                      fontSize: 24.sp
                    ),),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text("Enter email associated with your account and we’ll send and email with intructions to reset your password",
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
                padding:EdgeInsets.symmetric(vertical: 8.h, ),
                child: TextFormField(
                   validator: validateEmail,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp("[0-9@a-zA-Z.]")),
                            
                          ],
                           autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    hintText: "enter your email here",
                    hintStyle: TextStyle(
                      fontFamily: "Product-Light",
                      fontSize: 13.sp,
                    ),
                    prefixIcon: Icon(Icons.email_outlined,
                    color: Colors.grey,
                      ),
                      
                           
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
                    MaterialPageRoute(builder: (context) => otp_verification()),
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
