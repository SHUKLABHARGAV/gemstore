import 'package:flutter/material.dart';
import 'package:gemstore/classes/feature_product.dart';
import 'package:gemstore/utils/color_helper.dart';
import 'package:sizer/sizer.dart';

class feature_product_listView extends StatelessWidget {
  const feature_product_listView({
    super.key,
    required this.featureData,
  });

  final List<Feature_product> featureData;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 37.h,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: featureData.length,
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
                              featureData[index].featureproductimg,
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
                  featureData[index].featureproducttext,
                  style: TextStyle(
                      color: Colorhelper.feature_product_text,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  featureData[index].featureproductprice,
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

