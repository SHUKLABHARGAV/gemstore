import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gemstore/screens/Trackorder.dart';
import 'package:gemstore/screens/my_order_screen.dart';
import 'package:gemstore/screens/pendingOrder.dart';
import 'package:gemstore/screens/rateScreen.dart';
import 'package:gemstore/utils/color_helper.dart';
 
import 'package:sizer/sizer.dart';

class PendingorderDetail extends StatefulWidget {
  const PendingorderDetail({Key? key}) : super(key: key);

  @override
  State<PendingorderDetail> createState() => _PendingorderDetailState();
}

class _PendingorderDetailState extends State<PendingorderDetail> {
   bool showContinueButoon= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 252, 252),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  order_screen()),
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
                  "Order #14141",
                  style: TextStyle(fontSize: 15.sp),
                ),
                SizedBox(width: 5.h)
              ],
            ),
            SizedBox(height: 5.h),
            if( showContinueButoon == true)...[Container(
              height: 12.h,
              decoration: BoxDecoration(
                  color: Color(0xff575757),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your order is on the way",
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                        Text(
                          "Click here to track your order",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 3.h),
                    child: Image.asset(
                      "assets/Images/orderontheway.png",
                      height: 7.h,
                    ),
                  )
                ],
              ),
            ),]else...[ Container(
              height: 12.h,
              decoration: BoxDecoration(
                  color: Color(0xff575757),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                    padding: EdgeInsets.only(right: 4.h),
                    child: Image.asset(
                      "assets/Images/Group.png",
                      height: 8.h,
                    ),
                  )
                ],
              ),
            ),]
           ,
            Container(
              height: 56.h,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xffF1F2F3),
                                    blurRadius: 2,
                                    // blurStyle: BlurStyle.outer,
                                    // offset: Offset.zero
                                    offset: Offset(0.0, 5))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Order Number:",
                                      style: TextStyle(fontSize: 13.sp),
                                    ),
                                    Text(
                                      "#1110",
                                      style: TextStyle(fontSize: 13.sp),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Tracking Number: "),
                                    Text("231652ahv "),
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Delivery address:"),
                                    Text(
                                      "SBI Building, Software Park",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 2.h,),
                        Container(
                          height: 25.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xffF1F2F3),
                                    blurRadius: 2,
                                    // blurStyle: BlurStyle.outer,
                                    // offset: Offset.zero
                                    offset: Offset(0.0, 5))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                ListView.builder(
                                  itemCount: 2,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                  return Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Maxi Dress:",
                                      style: TextStyle(fontSize: 13.sp),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.close),
                                          Text(
                                      "1",
                                      style: TextStyle(fontSize: 13.sp),
                                    ),
                                      ],
                                    ),
                                  
                                    Text(
                                      "\$68.00",
                                      style: TextStyle(fontSize: 13.sp),
                                    ),
                                  ],
                                );
                                },),
                                
                                SizedBox(
                                  height: 2.h,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Sub Total: "),
                                        Text("120.00 ",  style: TextStyle(fontSize: 16)),
                                      
                                         
                                       
                                      ],
                                    ),
                                         Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: [
                                             Text("Shipping: "),
                                              Text("0.00 ",  style: TextStyle(fontSize: 16)),
                 
                                           ],
                                         ),
                                                   ],     
                                ),
                                 SizedBox(
                                  height: 2.h,
                                ),
                                Divider(
                                  color: Colors.grey,
                                ),
                               
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Total:"),
                                    Text(
                                      " \$120.00",
                                      style: TextStyle(fontSize: 16),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            if(
              showContinueButoon == true
              
            )...[ SizedBox(
            width: double.infinity,
            height: 6.h,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colorhelper.btncolor),
              onPressed:  () {
                     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => trackOrder()),);
            },
             child: Text("Continue Shoping",style: TextStyle(color: Colors.white,fontSize: 11.sp),)),
          )]
          else...[Row( 
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 6.h,
                  width: 40.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white,side: BorderSide(color: Colors.black)),
                    onPressed: () {
                    print("object");
                  }, child: Text("Return to home",style: TextStyle(
                    color: Colors.black))),
                ),
                SizedBox(
                                    height: 6.h,
                  width: 40.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white,side: BorderSide(color: Colors.black)),
                    onPressed: () async{
                   final data = await Navigator.push (
    context,
    MaterialPageRoute(builder: (context) => const RateScreen()),
  );
  if(data != null){
  setState(() {
  showContinueButoon=data;
  });}
                  }, child: Text("Rate",style: TextStyle(
                    color: Colors.black
                  ),)),
                )
              ],
            )
]
                      ],
        ),
      ),
    );
  }
}
