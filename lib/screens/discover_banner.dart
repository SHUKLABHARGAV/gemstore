import 'package:flutter/material.dart';
import 'package:gemstore/classes/banner_dropdown_data.dart';

import 'package:gemstore/utils/color_helper.dart';
import 'package:sizer/sizer.dart';

import '../classes/dinamic_banner.dart';

class Discover_banner extends StatefulWidget {
  const Discover_banner({
    super.key,
  });
  @override
  State<StatefulWidget> createState() {
    return _discover_bannerState();
  }
}

class _discover_bannerState extends State<Discover_banner> {
  List<Dinamicbanner> bannerData = [
    Dinamicbanner(
      id: 1,
      discoverimg: "assets/Images/discover1.png",
      discoverbg: Colorhelper.clothingbanner,
      discovertitle: "Clothing",
      Qtycatagory: [
        Catagory(
          id: 1,
          dropdownTitle: "Jacket",
          stockQuantity: '128 items',
        ),
        Catagory(
          id: 1,
          dropdownTitle: "Skirts",
          stockQuantity: '40 items',
        ),
        Catagory(
          id: 1,
          dropdownTitle: "Dresses",
          stockQuantity: '36 items',
        ),
        Catagory(
          id: 1,
          dropdownTitle: "Swaters",
          stockQuantity: '24 items',
        ),
        Catagory(
          id: 1,
          dropdownTitle: "Jeans",
          stockQuantity: '14 items',
        ),
        Catagory(
          id: 1,
          dropdownTitle: "T-Shirts",
          stockQuantity: '12 items',
        ),
        Catagory(
          id: 1,
          dropdownTitle: "Pants",
          stockQuantity: '9 items',
        ),
      ],
    ),
    Dinamicbanner(
      id: 2,
      discoverimg: "assets/Images/discover2.png",
      discoverbg: Colorhelper.accessoriesbanner,
      discovertitle: "Accessories",
      Qtycatagory: [
        Catagory(
          id: 2,
          dropdownTitle: "Purse",
          stockQuantity: '228 items',
        ),
        Catagory(
          id: 2,
          dropdownTitle: "Bags",
          stockQuantity: '40 items',
        ),
        Catagory(
          id: 2,
          dropdownTitle: "Earings",
          stockQuantity: '36 items',
        ),
        Catagory(
          id: 2,
          dropdownTitle: "Lipstick",
          stockQuantity: '24 items',
        ),
        Catagory(
          id: 2,
          dropdownTitle: "Eyeliners",
          stockQuantity: '24 items',
        ),
        Catagory(
          id: 2,
          dropdownTitle: "Make-up",
          stockQuantity: '22 items',
        ),
        Catagory(
          id: 2,
          dropdownTitle: "Jwellary",
          stockQuantity: '9 items',
        ),
      ],
    ),
    Dinamicbanner(
      id: 3,
      discoverimg: "assets/Images/discover3.png",
      discoverbg: Colorhelper.shoesbanner,
      discovertitle: "Shoes",
      Qtycatagory: [
        Catagory(
          id: 3,
          dropdownTitle: "dropdownTitle",
          stockQuantity: '328 ITEMS ',
        ),
        Catagory(
          id: 3,
          dropdownTitle: "dropdownTitle",
          stockQuantity: 'stockQuantity',
        ),
        Catagory(
          id: 3,
          dropdownTitle: "dropdownTitle",
          stockQuantity: 'stockQuantity',
        ),
      ],
    ),
    Dinamicbanner(
      id: 4,
      discoverimg: "assets/Images/discover4.png",
      discoverbg: Colorhelper.collectionbanner,
      discovertitle: "Collection",
      Qtycatagory: [
        Catagory(
          id: 4,
          dropdownTitle: "dropdownTitle",
          stockQuantity: ' 428 ITEMS',
        ),
        Catagory(
          id: 4,
          dropdownTitle: "vrjhbev",
          stockQuantity: 'stockQuantity',
        ),
        Catagory(
          id: 4,
          dropdownTitle: "dropdownTitle",
          stockQuantity: 'stockQuantity',
        ),
        Catagory(
          id: 4,
          dropdownTitle: "dropdownTitle",
          stockQuantity: 'stockQuantity',
        ),
      ],
    ),
  ];

  int? tappedIndex;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: ListView.builder(
          itemCount: bannerData.length,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (tappedIndex == index) {
                          tappedIndex = null;
                        } else {
                          tappedIndex = index;
                        }
                      });
                    },
                    child: Container(
                      height: 20.h,
                      decoration: BoxDecoration(
                          color: bannerData[index].discoverbg,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 38.0),
                              child: SizedBox(
                                  width: 40.w,
                                  child: Text(
                                    bannerData[index].discovertitle.toString(),
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: "Product",
                                        color: Colorhelper.White),
                                  )),
                            ),
                            Expanded(
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 20.h,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                Colors.white.withOpacity(0.2)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Container(
                                            height: 20.h,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white
                                                    .withOpacity(0.3)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      height: double.infinity,
                                      child: Image.asset(
                                        bannerData[index].discoverimg,
                                        height: double.infinity,
                                        fit: BoxFit.fill,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                if (tappedIndex == index)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: bannerData[index].Qtycatagory.length,
                      itemBuilder: (context, qtyIndex) {
                        return Container(
                          height: 50,
                          child: ListTile(
                            leading: Text(
                              bannerData[index]
                                  .Qtycatagory[qtyIndex]
                                  .dropdownTitle,
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  fontFamily: 'Product-Light',
                                  letterSpacing: 1),
                            ),
                            title: Padding(
                              padding: EdgeInsets.only(left: 17.h),
                              child: Text(
                                bannerData[index]
                                    .Qtycatagory[qtyIndex]
                                    .stockQuantity,
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    color: Colors.grey,
                                    fontFamily: 'Product-Light',
                                    letterSpacing: 1),
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 17,
                            ),
                          ),
                        );
                      },
                    ),
                  )
              ],
            );
          },
        ),
      ),
    );
  }
}
