import 'package:flutter/material.dart';
 
import 'package:sizer/sizer.dart';

class order_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _order_screenState();
  }
}

class _order_screenState extends State<order_screen> {
    

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
        body: Center(
          child: Text("hello"),
        ));
  }
}
