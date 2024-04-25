import 'package:flutter/material.dart';
import 'package:gemstore/screens/user_screen.dart';
import 'package:sizer/sizer.dart';

class userAddress extends StatefulWidget {
  const userAddress({Key? key}) : super(key: key);

  @override
  State<userAddress> createState() => _userAddressState();
}

class _userAddressState extends State<userAddress> {
   String _value = "myoffice";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal:  8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
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
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffFFFFFF),
                                          boxShadow: [
                                            BoxShadow(blurRadius: 0.2, offset: Offset(0.7, 0.7))
                                          ]),
                                      child: const Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: Icon(
                                          Icons.arrow_back_ios,
                                          size: 30,
                                        ),
                                      )),
                                ),
                                Text(
                                  "Delivery address",
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                                SizedBox(width: 5.h)
                              ],
                            ),
                    ),
                      SizedBox(
                    height: 5.h,
                  ),
                
                 Container(
             
               
                    width: double.infinity,
                    decoration: BoxDecoration(
                   border: Border.all(color: Colors.white.withOpacity(0.2)),
                    // color: Colors.amber,
                    boxShadow: [BoxShadow(
                      offset: Offset(0.2,0.2),
                      color: const Color.fromARGB(255, 114, 113, 113).withOpacity(0.2),
                      blurStyle: BlurStyle.outer,
                      blurRadius: 2
                    )],
                    borderRadius: BorderRadius.circular(15)
                    ),
            
                   child: RadioListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    title: Column(
                      crossAxisAlignment:CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(Icons.home_work_outlined,size: 50,),
                                SizedBox(width: 2.w,),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                
                                  children: [
                                      Text("SEND TO"),
                                    Text("My Office"),
                                  ],
                                ),
                                // SizedBox(width: 20.w,),
                                
                              ],
                            ),
                            TextButton(onPressed: () {
                              
                            }, child: const Text("Edit",style: TextStyle(color: Colors.red),))
                          ],
                        ),
                        // SizedBox(height: 2.h,),
                        
                        // SizedBox(height: 2.w,),
                      ],
                    ),
                    subtitle: const Text("SBI Building, street 3, Software Park"),  
                    
                       value: 'myoffice',
                       groupValue: _value,
                       activeColor: const Color(0xFF6200EE),
                       onChanged: (String? value) {
                         setState(() {
                           _value = value ?? "myoffice";
                         });
                       },
                     ),
                 ),
                 SizedBox(height: 2.h,),
                     Container(
             
               
                    width: double.infinity,
                    decoration: BoxDecoration(
                   border: Border.all(color: Colors.white.withOpacity(0.2)),
                    // color: Colors.amber,
                    boxShadow: [BoxShadow(
                      offset: Offset(1,1),
                      color: const Color.fromARGB(255, 114, 113, 113).withOpacity(0.2),
                      blurStyle: BlurStyle.outer,
                      blurRadius: 3
                    )],
                    borderRadius: BorderRadius.circular(15)
                    ),
            
                   child: RadioListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    title: Column(
                      crossAxisAlignment:CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(Icons.home_outlined,size: 50,),
                                SizedBox(width: 2.w,),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                
                                  children: [
                                      Text("SEND TO"),
                                    Text("My Home"),
                                  ],
                                ),
                                // SizedBox(width: 20.w,),
                                
                              ],
                            ),
                            TextButton(onPressed: () {
                              
                            }, child: const Text("Edit",style: TextStyle(color: Colors.red),))
                          ],
                        ),
                        // SizedBox(height: 2.h,),
                        
                        // SizedBox(height: 2.w,),
                      ],
                    ),
                    subtitle: const Text("SBI Building, street 3, Software Park"),  
                    
                       value: 'myhome',
                       groupValue: _value,
                       activeColor: const Color(0xFF6200EE),
                       onChanged: (String? value) {
                         setState(() {
                           _value = value ?? "myoffice";
                         });
                       },
                     ),
                 ),
                 SizedBox(height: 2.h,),
                
              ],
            ),
             Padding(
               padding: EdgeInsets.only( bottom: 25.h),
               child: SizedBox(
                    height: 6.h,
                    width: 48.w,
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.black),
                      onPressed: () {
                          setState(() {
                            
                          });
               
                      },
                      child: Text("Add new address",
                          style: TextStyle(
                              fontFamily: 'Product',
                              fontSize: 12.sp,
                              color: Colors.white)),
                    ),
                  ),
             )
          ],
        ),
      ),
    );
  }
}
