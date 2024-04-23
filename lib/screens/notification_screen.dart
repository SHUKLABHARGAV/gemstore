import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class notificationScreen extends StatelessWidget {
  const notificationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body:   Padding(
            padding:  EdgeInsets.symmetric(vertical: 6.h),

        child: Column(
          children: [
            Row(
                       
              children: [
                GestureDetector(
                          
                     
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
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
                            ),
                          ),
                          Padding(
                            padding:EdgeInsets.only(left: 11.h),
                            child: Text("Notification",style: TextStyle(fontSize: 20),),
                          )
              ],
            ),
            ListView.builder( 
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.black,
                    offset: Offset(0.5, 0.5)
                  )]
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.h,vertical: 2.h ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      Text("Good morning! Get 20% Voucher"),
                      Text("Summer sale up to 20% off. Limited voucher. Get now!! 😜"),
                      Text("data"),
                    ],
                  ),
                ),
              ),
            );
          },)
            
          ],
        ),
      ),
    );
  }
}
