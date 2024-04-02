import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class user_screen extends StatelessWidget {
  const user_screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        centerTitle: true,
        title: Text("My profile"),
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
        child: Text('user_screen'),
      ),
    );
  }
}
