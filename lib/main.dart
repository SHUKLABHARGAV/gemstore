import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gemstore/screens/welcome_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
         return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          
         fontFamily: 'Product',
        
          
        ),
        home: const WelcomeScreen(),
      );
      },
     
    );
  }
}

