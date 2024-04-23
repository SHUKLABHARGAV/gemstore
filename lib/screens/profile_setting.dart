import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gemstore/screens/user_screen.dart';
import 'package:sizer/sizer.dart';

class profileSetting extends StatefulWidget {
  const profileSetting({Key? key}) : super(key: key);

  @override
  State<profileSetting> createState() => _profileSettingState();
}

class _profileSettingState extends State<profileSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 8.h,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => user_screen()),
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
              SizedBox(
                width: 12.h,
              ),
              Text("Profile Setting",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1))
            ],
          ),
        ),
        SizedBox(height: 3.h,),
        Container(
          // color: Colors.blue,
          width: 16.h,
          height: 16.h,
          child: Stack(
            children: [
              Container(
                height: 15.h,
                width: 15.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/Images/user.png",
                        ),
                        fit: BoxFit.fill)),
              ),
              Positioned(
                top: 10.h,
                left: 9.h,
                child: Container(
                  height: 6.h,
                  width: 6.h,
                  decoration: BoxDecoration(
                      color: Colors.black, shape: BoxShape.circle),
                  child: Icon(Icons.camera_alt_outlined, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
                SizedBox(height: 8.h,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 55.w,
                          child: TextFormField(
                            minLines: 1,
                            decoration: InputDecoration(
                              hintText: "data",
                              hintStyle: TextStyle(color: Color(0xff43484B),fontFamily: 'Product',fontSize: 15.sp),
                              label: Text("First Name",style: TextStyle(color: Color(0xffA6ABC4), fontFamily: 'Product',letterSpacing: 1,fontSize: 13.sp))
                              
                            ),
                          ),
                        ),
                        SizedBox(width: 5.w,),
                        SizedBox(
                          width: 35.w,
                          child: TextFormField(
                            minLines: 1,
                            decoration: InputDecoration(
                              hintText: "data",
                               hintStyle: TextStyle(color: Color(0xff43484B),fontFamily: 'Product',fontSize: 15.sp),
                              label: Text("Last Name",style: TextStyle(color: Color(0xffA6ABC4),fontFamily: 'Product',letterSpacing: 1,fontSize: 13.sp))
                              
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                              minLines: 1,
                              decoration: InputDecoration(
                                hintText: "data",
                                 hintStyle: TextStyle(color: Color(0xff43484B),fontFamily: 'Product',fontSize: 15.sp),
                                label: Text("Email", style: TextStyle(color: Color(0xffA6ABC4),fontFamily: 'Product',letterSpacing: 1,fontSize: 13.sp),),

                                
                              ),
                            ),
                    ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 25.w,
                            child: TextFormField(
                              minLines: 1,
                              decoration: InputDecoration(
                                hintText: "data",
                                 hintStyle: TextStyle(color: Color(0xff43484B),fontFamily: 'Product',fontSize: 15.sp),
                                label: Text("Gender",style: TextStyle(color: Color(0xffA6ABC4),fontFamily: 'Product',letterSpacing: 1,fontSize: 13.sp))
                                
                              ),
                            ),
                          ),
                          SizedBox(width: 5.w,),
                          Expanded(
                            child: TextFormField(
                              minLines: 1,
                              decoration: InputDecoration(
                                hintText: "data",
                                 hintStyle: TextStyle(color: Color(0xff43484B),fontFamily: 'Product',fontSize: 15.sp),
                                label: Text("Phone",style: TextStyle(color: Color(0xffA6ABC4),fontFamily: 'Product',letterSpacing: 1,fontSize: 13.sp))
                                
                              ),
                            ),
                          ),
                        ],
                                           ),
                     ),
                  ],
                ),
                SizedBox(height: 10.h,),
                                SizedBox(
                  height: 6.h,
                  width: 48.w,
                  child: ElevatedButton(
                    
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {
                    
                  }, child: Text("Save changes",style: TextStyle(fontFamily: 'Product',fontSize: 12.sp,color: Colors.white)),),
                )
      ],
    ));
  }
}
