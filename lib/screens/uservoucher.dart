import 'package:flutter/material.dart';
import 'package:gemstore/screens/customcuppon.dart';
import 'package:gemstore/screens/user_screen.dart';
import 'package:sizer/sizer.dart';

class Uservoucher extends StatelessWidget {
  const Uservoucher({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:   SingleChildScrollView(
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
                              Text(
                                "Voucher",
                                style: TextStyle(fontSize: 15.sp),
                              ),
                              SizedBox(width: 5.h)
                            ],
                          ),
                       
            ),
                SizedBox(height: 4.h),
            Padding(
              padding: EdgeInsets.symmetric (horizontal:  8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HorizontalCouponExample1( Discount: "50%",Cuponcode: "FREESALE",Date: "Valid Til - 30 Jan 2024",Offername: "Black Friday", ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HorizontalCouponExample1( Discount: "20%",Cuponcode: "HAPPYALE",Date: "Valid Til - 20 Feb 2024",Offername: "Black Sunday", ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HorizontalCouponExample1( Discount: "30%",Cuponcode: "NAVRATRISALE",Date: "Valid Til - 10 Mar 2024",Offername: "Black Saturday", ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HorizontalCouponExample1( Discount: "40%",Cuponcode: "HOLIDAYALE",Date: "Valid Til - 11 Apr 2024",Offername: "Black Monday", ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HorizontalCouponExample1( Discount: "10%",Cuponcode: "ENJOYSALE",Date: "Valid Til - 15 May 2024",Offername: "Black Tuesday", ),
                  ),
                ],
              ),
            )
              //  Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(15),
              //   color: Colors.amber,
              //   ),
              //   width: 70.w,
              //   height: 11.h,
              //      child: Padding(
              //        padding: const EdgeInsets.all(8.0),
              //        child: Row(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: [
                          
                      
              //           Container(
              //             height: 5.h,
              //             color: Colors.black,
              //               child: Text("data",style: TextStyle(color:  Colors.white,)),
              //           ),
              //           Padding(
              //             padding:  EdgeInsets.symmetric(horizontal:  8.0),
              //             child: Column( 
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [ 
              //                 Text("data"),
              //                 Text("data"),
              //                 Text("data")
              //               ],
              //             ),
              //           )
                     
              //         ],
              //        ),
              //      ),         
              //             )
          ],
        ),
      ),
         
                         
    );
  }
}
