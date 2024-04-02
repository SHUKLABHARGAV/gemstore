import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Discover_banner extends StatelessWidget {
  const Discover_banner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 20.h,
            decoration: BoxDecoration(
            color: Color(0xffA3A798),
            borderRadius: BorderRadius.circular(15)
          
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    width: 5.h,
                  ),
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 20.h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.2)),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                height: 20.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.3)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          height: double.infinity,
                          child: Image.asset(
                            "assets/Images/discover1.png",
                            height:double.infinity,
                            fit: BoxFit.fill,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 20.h,
            decoration: BoxDecoration(
            color: Color(0xff9C9492),
            borderRadius: BorderRadius.circular(15)
          
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    width: 5.h,
                  ),
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 20.h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.2)),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                height: 20.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.3)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          height: double.infinity,
                          child: Image.asset(
                            "assets/Images/discover2.png",
                            height:double.infinity,
                            fit: BoxFit.fill,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 20.h,
            decoration: BoxDecoration(
            color: Color(0xff44565C),
            borderRadius: BorderRadius.circular(15)
          
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    width: 5.h,
                  ),
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 20.h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.2)),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                height: 20.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.3)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          height: double.infinity,
                          child: Image.asset(
                            "assets/Images/discover3.png",
                            height:double.infinity,
                            fit: BoxFit.fill,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 20.h,
            decoration: BoxDecoration(
            color: Color(0xffB9AEB2),
            borderRadius: BorderRadius.circular(15)
          
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    width: 5.h,
                  ),
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 20.h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.2)),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                height: 20.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.3)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          height: double.infinity,
                          child: Image.asset(
                            "assets/Images/discover4.png",
                            height:double.infinity,
                            fit: BoxFit.fill,
                          )),
                          Text("data"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
