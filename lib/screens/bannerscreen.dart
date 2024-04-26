import 'package:flutter/material.dart';
import 'package:gemstore/screens/collectionviews.dart';
import 'package:gemstore/utils/color_helper.dart';
import 'package:sizer/sizer.dart';

class Bannerscreen extends StatelessWidget {
  const Bannerscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 30.h,
          width: double.infinity,
          alignment: Alignment.topLeft,
          decoration: const BoxDecoration(
              // color: Colors.amber,

              image: DecorationImage(
                  image: AssetImage("assets/Images/hompage_slider.png"),
                  fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.h,left: 3.h),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal:  6.0),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        
                      ),
                      
                    ),
                  ),
                ),
                 Padding(
                   padding: EdgeInsets.only(top:5.h),
                   child: SizedBox(
                    width: 28.w,
                     child: Text(
                                          "Autumn Collection 2022",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              color: Colorhelper.White),
                                          textAlign: TextAlign.justify,
                                        ),
                   ),
                 ),
              ],
            ),
          ),
        ),

        //  Positioned(
        //   top: 5.h,
        //   left: 2.5.h,
        //    child:
        Container(
          margin: EdgeInsets.only(top: 27.h),
          height: 80.h,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),
          color: Colors.white,
          ),
          child: Stack(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [ 
                        SizedBox(height: 3.h,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(child: Image.asset("assets/Images/collection1.png",height: 30.h,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(child: Image.asset("assets/Images/collection3.png",height: 30.h,)),
                        ),
              
                      ],
                    ),
                    
                  ),
                  Column( 
                    children: [ 
                  SizedBox(height: 2.h,),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(child: Image.asset("assets/Images/collection2.png",height: 30.h,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(child: Image.asset("assets/Images/collection4.png",height: 30.h,)),
                        ),
                       
                    ],
                  )
                   
                ],
              ),
               Positioned(
                        bottom: 3.h,
                        left: 24.h,
                         child: Padding(
                                padding: EdgeInsets.only(left:2.h),
                                child: SizedBox(
                                  height: 6.5.h,
                                  width: 45.w,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)))),
                                    onPressed: () {
                                    Navigator.push(context,MaterialPageRoute(builder: (context) => Collectionviews(),));
                                  }, child: const Text("VIEW ALL",style: TextStyle(color: Colors.white),)),
                                ),
                              ),
                       )
            ],
          )
          ),
      
      ],
    ));
  }
}
