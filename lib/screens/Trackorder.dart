import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gemstore/screens/my_order_screen.dart';
import 'package:sizer/sizer.dart';

class trackOrder extends StatefulWidget {
  const trackOrder({Key? key}) : super(key: key);

  @override
  State<trackOrder> createState() => _trackOrderState();
}

class _trackOrderState extends State<trackOrder> {
  int activeStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 8.h,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => order_screen()),
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
                Text(
                  "Track Order",
                  style: TextStyle(fontSize: 15.sp),
                ),
                SizedBox(width: 5.h)
              ]),
          Container(
            height: 9.h,
            width: 45.h,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivered on 15.05.24",
                    style: TextStyle(fontSize: 13.sp),
                  ),
                  Text(
                    "Tracking Number : ik52582525",
                    style: TextStyle(fontSize: 13.sp),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(top: 1.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              shape: BoxShape.circle),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              height: 1.5.h,
                              width: 1.5.h,
                              decoration: BoxDecoration(
                                  color: Colors.black, shape: BoxShape.circle),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 1.h,
                        ),
                        Expanded(child: Text("Your order is delivered Today")),
                        Text("24/04/24")
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h, top: 1.h),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 3,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h, top: 1.h),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 3,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h, top: 1.h),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 3,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
               boxShadow: [BoxShadow(
                color: Color(0xffF7F7F7),
                offset: Offset( 2, 2)
               )],
               borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xffFFD953),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffFFD953),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffFFD953),
                        ),
                      ],
                    ),
                    Image.asset("assets/Images/heand.png", height: 40,width:55, fit: BoxFit.fitHeight,),
                  ],
                ),
                SizedBox(width: 1.h,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Don't forget to rate",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold,letterSpacing: 1),),
                    Text("Rate product to get 5 points for collect.",style:TextStyle(color: Colors.black.withOpacity(0.5),
                    fontSize: 11.sp),
                    ), 
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, index) => Icon(
                        Icons.star_outlined,
                        color: Color(0xffFFD953),
                        size: 50,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    ));
  }
}
