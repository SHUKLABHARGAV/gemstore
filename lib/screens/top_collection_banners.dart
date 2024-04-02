import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gemstore/utils/color_helper.dart';
import 'package:sizer/sizer.dart';

class top_collection_banners extends StatelessWidget {
  const top_collection_banners({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: Container(
            height: 20.h,
            decoration: BoxDecoration(
                color: Colorhelper.banner_feature,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 2.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "I Sale up to 40%",
                        style: TextStyle(
                          fontFamily: 'Product-Light',
                          fontSize: 12.sp,
                          color: Color(0xff777E90),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      SizedBox(
                        width: 30.w,
                        child: Text(
                          "FOR SLIM & BEAUTY",
                          style: TextStyle(
                              fontFamily: 'Product-Light',
                              color: Color(0xff777E90),
                              fontWeight: FontWeight.w500,
                              fontSize: 17.sp),
                        ),
                      )
                    ],
                  ),
                )),
                Expanded(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Container(
                              height: 17.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.1)),
                            ),
                          ),
                          Container(
                              alignment: Alignment.center,
                              height: 20.h,
                              child: Image.asset(
                                "assets/Images/Top_collection.png",
                                height: 50.h,
                                fit: BoxFit.fitHeight,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: Container(
            height: 30.h,
            decoration: BoxDecoration(
                color: Colorhelper.banner_feature,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 4.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 200.w,
                        child: Text(
                          "I Summer Collection 2021",
                          style: TextStyle(
                            fontFamily: 'Product-Light',
                            fontSize: 12.sp,
                            color: Color(0xff777E90),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      SizedBox(
                        width: 30.w,
                        child: Text(
                          "Most sexy & fabulous design ",
                          style: TextStyle(
                              fontFamily: 'Product',
                              color: Color(0xff353945),
                              fontWeight: FontWeight.w500,
                              fontSize: 17.sp),
                        ),
                      )
                    ],
                  ),
                )),
                Expanded(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 6.h),
                            child: Container(
                              height: 17.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.1)),
                            ),
                          ),
                          Container(
                              alignment: Alignment.center,
                              height: 30.h,
                              child: Image.asset(
                                "assets/Images/summer_collection.png",
                                height: 50.h,
                                fit: BoxFit.fitHeight,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.5.h),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(1.h),
                child: Container(
                  height: 30.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                      color: Colorhelper.banner_feature,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "assets/Images/t-shirts.png",
                          fit: BoxFit.fitHeight,
                          height: 30.h,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "T-Shirts",
                            style: TextStyle(color: Color(0xff737680), fontSize: 12.sp),
                          ),
                           SizedBox(
                              height: 1.h,
                             ),
                          SizedBox(
                              width: 16.w,
                              child: Text(
                                "The Office Life",
                                style: TextStyle(fontFamily: 'Product-Light', fontSize: 13.sp),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 30.h,
                width: 45.w,
                decoration: BoxDecoration(
                     color: Colorhelper.banner_feature,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dresses",
                             style: TextStyle(color: Color(0xff737680),
                             fontSize: 12.sp
                             )),
                             SizedBox(
                              height: 3.h,
                             ),
                          SizedBox(
                              width: 16.w,
                              child: Text(
                                "Elegant Design",
                                
                                style: TextStyle(fontFamily: 'Product-Light', fontSize: 13.sp),
                              )),
                        ],
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/Images/dresses.png",
                        fit: BoxFit.fitHeight,
                        height: 30.h,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
