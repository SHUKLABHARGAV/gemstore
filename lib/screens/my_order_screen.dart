import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gemstore/screens/pendingOrder.dart';
 
import 'package:sizer/sizer.dart';

class order_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _order_screenState();
  }
}

class _order_screenState extends State<order_screen> {
  List<String> Ordertype = [
    "Pending",
    "Deliverd",
    "Cancelled",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("My Order"),
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
          actions: [Icon(Icons.notifications_none_rounded)],
        ),
       
        body: Column(
          children: [
            Container(
              // alignment: Alignment.centerLeft,
              height: 6.h,

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 5.h,
                      width: 28.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black)
                          
                          // color: Colors.black,
                          ),
                      child: Text(Ordertype[index]),
                    ),
                  );
                },
              ),
            ),
            pending_order()
          ],
        ));
  }
}

