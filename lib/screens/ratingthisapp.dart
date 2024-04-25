import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gemstore/screens/user_screen.dart';
import 'package:gemstore/utils/color_helper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

class RatethisApp extends StatefulWidget {
  const RatethisApp({Key? key}) : super(key: key);

  @override
  State<RatethisApp> createState() => _RatethisAppState();
}

class _RatethisAppState extends State<RatethisApp> {
       File ? selectedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: Column(
          children: [
            SizedBox(
                  height: 8.h,
                ),
            Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  
                                  GestureDetector(
                                    onTap: () {
                                  Navigator.pop(
                            context,
                            MaterialPageRoute(builder: (context) =>  user_screen()),
                          );
                                    },
                                    child: Container(
                                        height: 5.h,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xffFFFFFF),
                                            boxShadow: [
                                              BoxShadow(blurRadius: 0.2, offset: Offset(0.7, 0.7))
                                            ]),
                                        child: const Padding(
                                          padding: EdgeInsets.only(left: 8.0),
                                          child: Icon(
                                            Icons.arrow_back_ios,
                                            size: 30,
                                          ),
                                        )),
                                  ),
                                  Text(
                                    "Share your feedback",
                                    style: TextStyle(fontSize: 15.sp),
                                  ),
                                  SizedBox(width: 5.h)
                                ],
                              ),
                      ),
                        SizedBox(height: 1.h,),
                        Text("What is your opinion of GemStore?",style: TextStyle(fontSize: 17,),),
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
             color:Color(0xff000000),
             size: 50,
           ),
           onRatingUpdate: (rating) {
             print(rating);
           },
        ),
                        SizedBox(
                  height: 5.h,
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
                   SizedBox(height: 2.h,),
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
                showDialog(context: context, builder: (context) {
                  return Dialog(
                    child: Container(
                      height: 35.h,
                      width: 90.w,
                      
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical:2.h),
                            child: CircleAvatar(
                              child: Icon(Icons.check,size: 34,color: Colors.white,),
                              radius: 30,
                              backgroundColor: Color(0xff508A7B),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 5.0),
                            child: Text("Thank you for your feedback!",style: TextStyle( fontSize: 13.sp,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                          ),
                          SizedBox(
                            width: 70.w,
                            child: Text("We appreciated your feedback.We’ll use your feedback to improve your experience.",style: TextStyle( color: Colors.black.withOpacity(0.5), fontSize: 12.sp),textAlign: TextAlign.center,)),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical:  8.0),
                            child: ElevatedButton(
                              
                              style: ElevatedButton.styleFrom(backgroundColor: Colorhelper.btncolor),
                              onPressed: () {
                              Navigator.pop(context);
                            }, child: Text("Done",style: TextStyle(color: Colors.white),)),
                          )
                        ],
                      ),
                    ),
                  );
                },);
              },
               child: Text("Send Feedback",style: TextStyle(color: Colors.white,fontSize: 12.sp),)),
            ),
          
              
          ],
        ),
      ),
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
