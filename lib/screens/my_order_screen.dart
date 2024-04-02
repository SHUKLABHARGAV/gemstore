import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class order_screen extends StatelessWidget {
  const order_screen({Key? key}) : super(key: key);
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
        child: Text('Order_screen'),
      ),
    );
  }
}
