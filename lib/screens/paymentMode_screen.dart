import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:gemstore/screens/addcreditcard.dart';
import 'package:gemstore/screens/user_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:u_credit_card/u_credit_card.dart';

class modeScreen extends StatelessWidget {
  const modeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:       Column(
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
                        "Payment",
                        style: TextStyle(fontSize: 15.sp),
                      ),
                      SizedBox(width: 5.h)
                    ],
                  ),
          ),
                 SizedBox(height: 5.h),
                 Padding(
                   padding:  EdgeInsets.symmetric(horizontal: 2.h),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Card Managment", style: TextStyle(fontFamily: 'Product',fontWeight: FontWeight.w600,letterSpacing: 1,fontSize: 12.sp),),
                       TextButton(
                        
                        onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => AddcreditCard(),));
                       }, child: Text("Add new+",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w600),))
                     ],
                   ),
                 ),
                 SizedBox(height: 5.h),
                CreditCardUi(
                  scale: 1.3,
                  cardHolderFullName: 'Sunie Pham',
                  cardNumber: "123456789123456789",
                  validFrom: '01/20',
                  validThru: '05/24',
                  balance: 12300000.00,
                  autoHideBalance: true,
                  showBalance: false,
                  enableFlipping: true,
                  cvvNumber: '125',
                  topLeftColor: Colors.blue,
                  bottomRightColor: const Color.fromARGB(255, 153, 194, 227),
                  doesSupportNfc: true,
                          
                  cardProviderLogo: Text("VISA"),
                  placeNfcIconAtTheEnd: true,
                ),
                      SizedBox(height: 5.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:  2.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("or check out with"),
                          ],
                        ),
                      ),
                          SizedBox(height: 5.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.h),
                      child: Row(
                        
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                                     height: 5.h,
                                     width: 15.w,         
                               decoration: BoxDecoration(
                                
                                 borderRadius: BorderRadius.circular(8),
                                 border: Border.all( color: Colors.grey)
                               ),
                              
                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Image.asset("assets/Images/paypal.png"),
                                ),
                               ),
                          ),
                             Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                               child: Container(
                                     height: 5.h,
                                     width: 15.w,         
                               decoration: BoxDecoration(
                                
                                 borderRadius: BorderRadius.circular(8),
                                 border: Border.all( color: Colors.grey)
                               ),
                                                           
                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Image.asset("assets/Images/mastercard.png"),
                                ),
                               ),
                             ),
                             Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                               child: Container(
                                     height: 5.h,
                                     width: 15.w,         
                               decoration: BoxDecoration(
                                
                                 borderRadius: BorderRadius.circular(8),
                                 border: Border.all( color: Colors.grey)
                               ),
                                                           
                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Image.asset("assets/Images/visa.png"),
                                ),
                               ),
                             ),
                        ],
                      ),
                    )
        ],

      ),
    );
  }
}
