import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';

class RateScreen extends StatefulWidget {
 
  const RateScreen({Key? key}) : super(key: key);
   @override
  State<StatefulWidget> createState() {
    return Rate_screenState();
  }
} 
  
  class Rate_screenState extends State<RateScreen> {
  @override
  Widget build(BuildContext context) {
   double value = 3;
    return Scaffold(
      
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
           children: [
             SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
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
                  Text(
                    " Rate Product",
                    style: TextStyle(fontSize: 15.sp),
                  ),
                  SizedBox(width: 5.h)
                ],
              ),
              SizedBox(height: 5.h),
              Container(
                height: 9.h,
                decoration: BoxDecoration(
                    color: Color(0xff575757),
                    borderRadius: BorderRadius.circular(11)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Padding(
                      padding: EdgeInsets.only(right: 0.h),
                      child: Image.asset(
                        "assets/Images/Group (1).png",
                        height: 8.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Your order is delivered ",
                            style: TextStyle(color: Colors.white, fontSize: 19),
                          ),
                          Text(
                            "Rate product to get 5 points for collect.",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Icon(Icons.arrow_forward_ios_outlined,
                      size: 30,
                      color: Colors.white,),
                    )
                  ],
                ),
              ),
              SizedBox(height: 1.h,),
             RatingStars(
            value: value,
            onValueChanged: (v) {
    
              setState(() {
                value = v;
              });
            },
            starBuilder: (index, color) => Icon(
              Icons.star,
             size: 50,
              color: color,
            ),
            starCount: 5,
            starSize: 50,
            valueLabelColor: const Color(0xff9b9b9b),
            valueLabelTextStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 12),
            valueLabelRadius: 10,
            maxValue: 5,
            starSpacing: 2,
            // maxValueVisibility: true,
            valueLabelVisibility: false,
            animationDuration: Duration(milliseconds: 1000),
            valueLabelPadding:
                const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
            valueLabelMargin: const EdgeInsets.only(right: 8),
            starOffColor: const Color(0xffB1B5C3),
            starColor: Color(0xff508A7B),
          ),
          SizedBox( height: 1.h,),
          TextField(
            
            decoration: InputDecoration(
              hintText: "Would you like to write anything about this product?",
              contentPadding: EdgeInsets.only(bottom:40.h ),
              
              enabled: true,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
            ),
            
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              
              children: [
                Container(
                  color: Colors.amber,
                  height: 10.h,
                  width: 25.w,
                  child:Text("hello")
                ),
                SizedBox(width: 2.h,),
                Container(
              decoration: BoxDecoration(
                border: Border.all()
              ),
              height: 10.h,
              width: 25.w,
              child:Text("hello")
            ),
              ],
            ),
          ),
        
           ],
        ),
      )
    );
  }
}
