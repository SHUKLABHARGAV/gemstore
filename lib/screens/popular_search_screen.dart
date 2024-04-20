import 'package:flutter/material.dart';
import 'package:gemstore/classes/popular_model.dart';
import 'package:gemstore/utils/color_helper.dart';
import 'package:sizer/sizer.dart';

class popular_search_screen extends StatelessWidget {
  const popular_search_screen({
    super.key,
    required this.popularData,
  });
 final List<PopularData> popularData;
  @override
  Widget build(BuildContext context) {

    
    return Container(
          
          height: 37.h,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: popularData.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25.h,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colorhelper.feature_product,
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                image: AssetImage(
                                  popularData[index].popularimg,
                                ),
                                fit: BoxFit.fill)),
                        height: 30.h,
                        width: 38.w,
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      popularData[index].populartext,
                      style: TextStyle(
                          color: Colorhelper.feature_product_text,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      popularData[index].popularprice,
                      style: TextStyle(
                        color: Colorhelper.feature_product_text,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        );
  }
}
