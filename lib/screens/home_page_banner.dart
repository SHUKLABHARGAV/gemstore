import 'package:flutter/material.dart';
import 'package:gemstore/utils/color_helper.dart';
import 'package:sizer/sizer.dart';

class home_page_banner extends StatelessWidget {
  const home_page_banner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colorhelper.banner_feature,
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "I NEW COLLECTION",
                  style: TextStyle(
                      fontFamily: 'Product-Light', fontSize: 12.sp,color: Colors.grey),
                ),
                SizedBox(
                  height: 3.h,
    
                ),
                SizedBox(
                  width: 30.w,
                  child: Text(
                    "HANG OUT & PARTY",
                    style: TextStyle(
                        fontFamily: 'Product-Light',
                        fontWeight: FontWeight.w500, fontSize: 15.sp),
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
                    Container(
                      height: 25.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.2)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 20.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.3)),
                        ),
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        height: 25.h,
                        child: Image.asset(
                          "assets/Images/banner.png",
                          height: 50.h,
                          fit: BoxFit.fill,
                        ))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
