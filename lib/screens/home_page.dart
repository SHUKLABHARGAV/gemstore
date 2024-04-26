import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gemstore/classes/HomeSidebar.dart';
import 'package:gemstore/classes/catagory_slider_model.dart';
import 'package:gemstore/classes/feature_product.dart';
import 'package:gemstore/classes/recommanded_product.dart';
import 'package:gemstore/screens/bannerscreen.dart';
import 'package:gemstore/screens/feature_product_listView.dart';
import 'package:gemstore/screens/home_page_banner.dart';
import 'package:gemstore/screens/notification_screen.dart';
import 'package:gemstore/screens/recommanded_product.dart';
import 'package:gemstore/screens/sidebarDrawer.dart';
import 'package:gemstore/screens/top_collection_banners.dart';
import 'package:gemstore/utils/color_helper.dart';
import 'package:sizer/sizer.dart';

class home_page extends StatefulWidget {
   @override
  State<StatefulWidget> createState() {
    return _home_pageState();
  }
}
class _home_pageState extends State<home_page> {
   int _current = 0;
  final CarouselController _controller = CarouselController();
  
  List<Home_sidebar> sidebarIteam = [
    Home_sidebar(id: 1, sidebarIcon: Icon(Icons.home), sidebarTitle: "Homepage"),
    Home_sidebar(id: 2, sidebarIcon: Icon(Icons.search), sidebarTitle: "Discover"),
    Home_sidebar(id: 3, sidebarIcon: Icon(Icons.shopping_bag), sidebarTitle: "My Order"),
    Home_sidebar(id: 4, sidebarIcon: Icon(Icons.person), sidebarTitle: "My profile"),
    Home_sidebar(id: 5,  sidebarTitle: "OTHER"),
      Home_sidebar(id: 6, sidebarIcon: Icon(Icons.settings), sidebarTitle: "Setting"),
      Home_sidebar(id: 7, sidebarIcon: Icon(Icons.email), sidebarTitle: "Support"),
      Home_sidebar(id: 8, sidebarIcon: Icon(Icons.info), sidebarTitle: "About us"),
  ];



  List<Recommanded_product> recommanded = [
    Recommanded_product(id: 1, recomandedImg: "assets/Images/recommanded.png", recomandedTitle: "White fashion hoodie", recomandedPrice: "\$ 29.00"),
    Recommanded_product(id: 1, recomandedImg: "assets/Images/recommand2.png", recomandedTitle: "Cotton fashion hoodie", recomandedPrice: "\$ 30.00")
  ];

  List<Icon> catagoryicon = <Icon>[
    Icon(Icons.female),
    Icon(Icons.male),
    Icon(Icons.female),
    Icon(Icons.brush),
  ];
  List<String> catagoryText = [
    "Female",
    "Male",
    "Accessories",
    "Beauty",
  ];
  List<Catagory> cattagoryData = [
    Catagory(
        id: 1,
        catagoryimg: 'assets/Images/hompage_slider.png',
        catagorytext: "Autumn Collection 2022"),
    Catagory(
        id: 1,
        catagoryimg: "assets/Images/hompage_slider.png",
        catagorytext: "Autumn Collection 2022"),
    Catagory(
        id: 1,
        catagoryimg: "assets/Images/hompage_slider.png",
        catagorytext: "Autumn Collection 2022"),
  ];
  List<Feature_product> featureData = [
    Feature_product(
        id: 1,
        featureproductimg: 'assets/Images/feature1.png',
        featureproducttext: 'Turtleneck Sweater ',
        featureproductprice: '\$ 39.99'),
    Feature_product(
        id: 2,
        featureproductimg: 'assets/Images/feature2.png',
        featureproducttext: 'Long Sleeve Dress ',
        featureproductprice: '\$ 45.00'),
    Feature_product(
        id: 3,
        featureproductimg: 'assets/Images/feature3.png',
        featureproducttext: 'Sportwear Set ',
        featureproductprice: '\$ 80.00'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sidebarDrawer(sidebarIteam: sidebarIteam),
     appBar: AppBar(
        centerTitle: true,
        title: Text("Gemstore"),
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 20.sp,
            fontFamily: "Product",
            letterSpacing: 1.sp),
        leading: IconButton(
          onPressed: () {},
        icon: Icon(Icons.sort_outlined),
        ),
        actions: [InkWell(
          onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => notificationScreen(),) );
          },
          child: Icon(Icons.notifications_none_rounded))],
      ),
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2.h,
            ),
            Container(
              // alignment: Alignment.centerLeft,
              height: 10.h,
              width: 100.h,
              // color: Colors.amber,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics:  NeverScrollableScrollPhysics(),
                // shrinkWrap: true,
                itemCount: 4,

                itemBuilder: (context, index) {
                  return Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.2.h),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black)
                              // color: Colors.black,
                              ),
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Container(
                              alignment: Alignment.center,
                              height: 5.h,
                              width: 15.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.black)),
                              child: catagoryicon[index],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        catagoryText[index],
                        style: TextStyle(fontSize: 9.sp),
                      ),
                    ],
                  );
                },
              ),
            ),
            Stack(
              children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Bannerscreen(),));
                },
                child: CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                      // height: 22.h,
                      autoPlay: true,
                      enlargeFactor: 0.5,
                      enlargeCenterPage: true,
                      aspectRatio: 16 / 7,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                  items: [
                    ...cattagoryData.map((i) => Builder(
                          builder: (BuildContext context) {
                            return Container(
                                alignment: Alignment.topRight,
                                height: 25.h,
                                width: 85.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colorhelper.introslider,
                                    image: DecorationImage(
                                        image: AssetImage(i.catagoryimg),
                                        fit: BoxFit.fill)),
                                child: SizedBox(
                                  width: 28.w,
                                    child: Text(
                                      i.catagorytext,
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          color: Colorhelper.White),
                                      textAlign: TextAlign.justify,
                                    ),
                                ));
                          },
                        ))
                  ].toList(),
                ),
              ),
              Positioned(
                top: 18.h,
                right: 20.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: cattagoryData.asMap().entries.map((entry) {
                    return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 5.0,
                            height: 5.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? null
                                    : Colorhelper.White.withOpacity(
                                        _current == entry.key ? 0.9 : 0.4))),
                          ),
                        ));
                  }).toList(),
                ),
              ),
            ]),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Feature Products",
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontFamily: 'Product',
                        fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text("Show all",
                          style: TextStyle(color: Colors.grey)))
                ],
              ),
            ),
            feature_product_listView(featureData: featureData),
            home_page_banner(),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontFamily: 'Product',
                        fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text("Show all",
                          style: TextStyle(color: Colors.grey)))
                ],
              ),
            ),
            recommanded_product(recommanded: recommanded),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Collection",
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontFamily: 'Product',
                        fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text("Show all",
                          style: TextStyle(color: Colors.grey)))
                ],
              ),
            ),
            top_collection_banners(),
            

            
          ],
        ),
      ),
    );
  }
}


