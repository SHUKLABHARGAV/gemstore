import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:flutter_rating_stars/flutter_rating_stars.dart';
// import 'package:gemstore/screens/PendingorderDetail.dart';
import 'package:gemstore/screens/my_order_screen.dart';
// import 'package:gemstore/screens/pendingOrder.dart';
import 'package:gemstore/utils/color_helper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
// import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';

class RateScreen extends StatefulWidget {


  const RateScreen({Key? key}) : super(key: key);
   @override
  State<StatefulWidget> createState() {
    return Rate_screenState();
  }
} 
  
  class Rate_screenState extends State<RateScreen> {
     File ? selectedImage;
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      
      body:  SingleChildScrollView(
        child: Padding(
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
                          child: GestureDetector(
                            onTap: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => order_screen()),);
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 30,
                            ),
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
                RatingBar.builder(
   initialRating: 3,
   minRating: 1,
   direction: Axis.horizontal,
   allowHalfRating: true,
   itemCount: 5,
   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
   itemBuilder: (context, index) => Icon(
     Icons.star,
     color:Color(0xff508A7B),
     size: 50,
   ),
   onRatingUpdate: (rating) {
     print(rating);
   },
),
               
            SizedBox( height: 1.h,),
            TextField(
              textAlign: TextAlign.start,
              maxLines: 12,
              decoration: InputDecoration(
                hintText: "Would you like to write anything about this product?",
                
                
                enabled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                
                children: [
            
                  DottedBorder(
                    dashPattern: [15,4],
                    color: Color(0xffCCD2E3),
                    strokeWidth: 2,
                    child: Container(
                   
                      height: 8.h,
                      width: 20.w,
                      child:GestureDetector(
                        onTap: () {
                          setState(() {
                            _pickImageFromGallary();
                          });
                        },
                        child: Icon(Icons.image_outlined,
                        color: Color(0xffCCD2E3),
                        size: 50,),
                      )
                    ),
                  ),
                  SizedBox(width: 2.h,),
                 DottedBorder(
                    dashPattern: [15,4],
                    color: Color(0xffCCD2E3),
                    strokeWidth: 2,
                    child: Container(
                   
                      height: 8.h,
                      width: 20.w,
                      child:GestureDetector(
                        onTap: () {
                          _pickImageFromCamera();
                        },
                        child: Icon(Icons.camera_alt_outlined,
                        color: Color(0xffCCD2E3),
                        size: 50,),
                      )
                    ),
                  ),
                   Container(
                                      
                     height: 8.h,
                     width: 20.w,
                     child: selectedImage != null ? Image.file(selectedImage!):const Text("")
                   ),
                ],
              ),
            ),
                 SizedBox(height: 2.h,),
                  
                 SizedBox(height: 2.h,),
          SizedBox(
            width: 40.h,
            height: 6.h,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colorhelper.btncolor),
              onPressed:  () {
                      Navigator.pop(context, true);
            },
             child: Text("Submit Review",style: TextStyle(color: Colors.white,fontSize: 11.sp),)),
          )
             ],
          ),
        ),
      )
    );
  }
  Future _pickImageFromGallary() async{
    final returnedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      selectedImage = File(returnedImage!.path);
    });
  }
    Future _pickImageFromCamera() async{
    final returnedImage = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      selectedImage = File(returnedImage!.path);
    });
  }
}
