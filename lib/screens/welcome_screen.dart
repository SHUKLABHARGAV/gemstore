import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gemstore/screens/Intro1.dart';
import 'package:gemstore/utils/color_helper.dart';
import 'package:sizer/sizer.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/Images/image1.png"),
          fit: BoxFit.cover,
        )),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
          child: Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: new BoxDecoration(
                color: const Color(0xff000000).withOpacity(0.3)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                //  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Welcome TO FluxStore!",
                    style: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                          color: Colors.black,
                          blurRadius: 2.0,
                          offset: Offset(2, 2),
                        )
                      ],
                      fontSize: 25,
                      fontFamily: 'Product',
                      color: Colorhelper.White,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  const Text(
                    "The home for a fashionista",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Product',
                      color: Colorhelper.White,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    width: 22.h,
                    height: 6.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.withOpacity(0.8),
                          side: const BorderSide(
                            color: Colorhelper.White,
                          )),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Intro1()),
                        );
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colorhelper.White,
                            fontSize: 11.sp),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      
    );
  }
}
