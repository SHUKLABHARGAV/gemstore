import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gemstore/classes/intro_model.dart';
import 'package:gemstore/utils/color_helper.dart';
import 'package:sizer/sizer.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
   List<Intro> introData = [
      Intro(
        id: 1,
        introImg: "assets/Images/intro1.png",
        introTitle: "Discover something new",
        introSubTitle: "Special new arrivals just for you",
      ),
      Intro(
        id: 2,
        introImg: "assets/Images/intro2.png",
        introTitle: "Update trendy outfit",
        introSubTitle: "Favorite brands and hottest trends",
      ),
      Intro(
        id: 3,
        introImg: "assets/Images/intro3.png",
        introTitle: "Explore your true style",
        introSubTitle: "Relax and let us bring the style to you",
      ),
    ];

// final List<String> imgList = [
//   'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//   'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
//   'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
//   'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
// ];

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
        Expanded(
          child: CarouselSlider(
           
            carouselController: _controller,
            options: CarouselOptions(
                height:100.h,
                autoPlay: true,
                enlargeFactor: 0.4,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
                           items: [
                ...introData.map((i) => Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: 100.h,
                          child: Column(
                            children: [
                              Text(
                                i.introTitle,
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2,
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                i.introSubTitle,
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Container(
                                alignment: Alignment.center,
                                width: 70.w,
                                height: 48.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colorhelper.introslider,
                                ),
                                child: Image.asset(
                                  i.introImg,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ))
              ].toList(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: introData.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: EdgeInsets.only(bottom: 90 ),
                  decoration: BoxDecoration(
                    
                    
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? null 
                              : Colors.white.withOpacity(_current == entry.key ? 0.9 : 0.4)
                              )
                          ),
                ),
              ),
            );
          }).toList(),
        ),
      ]);
    
  }
}