import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gemstore/screens/user_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:u_credit_card/u_credit_card.dart';

class AddcreditCard extends StatefulWidget {
  const AddcreditCard({Key? key}) : super(key: key);

  @override
  State<AddcreditCard> createState() => _AddcreditCardState();
}

class _AddcreditCardState extends State<AddcreditCard> {
  TextEditingController cardholdername = TextEditingController();
  TextEditingController cardnumber = TextEditingController();
  TextEditingController cvv = TextEditingController();
  TextEditingController expires = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8.h),
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
                        MaterialPageRoute(builder: (context) => user_screen()),
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
                    "Add new card",
                    style: TextStyle(fontSize: 15.sp),
                  ),
                  SizedBox(width: 5.h)
                ],
              ),
            ),
            SizedBox(height: 5.h),
            CreditCardUi(
              scale: 1.3,
              cardHolderFullName: cardholdername.text.isNotEmpty ? cardholdername.text : 'Sunie Pham' ,
              cardNumber: cardnumber.text.isNotEmpty ? cardnumber.text : "123456789123456789",
              validFrom: '01/20',
              validThru: expires.text.isNotEmpty ? expires.text : '07/24',
              balance: 12300000.00,
              autoHideBalance: true,
              showBalance: false,
              enableFlipping: true,
              cvvNumber: cvv.text.isNotEmpty ? cvv.text : '55',
              topLeftColor: Colors.blue,
              bottomRightColor: const Color.fromARGB(255, 153, 194, 227),
              doesSupportNfc: true,
              cardProviderLogo: Text("VISA"),
              placeNfcIconAtTheEnd: true,
            ),
            SizedBox(height: 5.h),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    minLines: 1,
                    controller: cardholdername,
                    decoration: InputDecoration(
                      hintText: "Sunie Pham",
                      hintStyle: TextStyle(
                          color: Color(0xff43484B),
                          fontFamily: 'Product',
                          fontSize: 11.sp),
                      label: Text(
                        "Cardholder Name",
                        style: TextStyle(
                            color: Color(0xffA6ABC4),
                            fontFamily: 'Product',
                            letterSpacing: 1,
                            fontSize: 11.sp),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: cardnumber,
                    minLines: 1,
                    maxLength: 16,
                    decoration: InputDecoration(
                      hintText: "1234567891123456",
                      hintStyle: TextStyle(
                          color: Color(0xff43484B),
                          fontFamily: 'Product',
                          fontSize: 11.sp),
                      label: Text(
                        "Card Number",
                        style: TextStyle(
                            color: Color(0xffA6ABC4),
                            fontFamily: 'Product',
                            letterSpacing: 1,
                            fontSize: 11.sp),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 45.w,
                        child: TextFormField(
                          controller: expires,
                          minLines: 1,
                          maxLength: 5,
                          decoration: InputDecoration(
                            hintText: "03/23",
                            hintStyle: TextStyle(
                                color: Color(0xff43484B),
                                fontFamily: 'Product',
                                fontSize: 15.sp),
                            label: Text(
                              "Expires",
                              style: TextStyle(
                                  color: Color(0xffA6ABC4),
                                  fontFamily: 'Product',
                                  letterSpacing: 1,
                                  fontSize: 11.sp),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 45.w,
                        child: TextFormField(
                          controller: cvv,
                          minLines: 1,
                          maxLength: 3,
                          decoration: InputDecoration(
                            hintText: "123",
                            hintStyle: TextStyle(
                                color: Color(0xff43484B),
                                fontFamily: 'Product',
                                fontSize: 15.sp),
                            label: Text(
                              "Cvv",
                              style: TextStyle(
                                  color: Color(0xffA6ABC4),
                                  fontFamily: 'Product',
                                  letterSpacing: 1,
                                  fontSize: 11.sp),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 6.h,
                  width: 48.w,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {
                        setState(() {
                          
                        });

                    },
                    child: Text("Add card",
                        style: TextStyle(
                            fontFamily: 'Product',
                            fontSize: 12.sp,
                            color: Colors.white)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
