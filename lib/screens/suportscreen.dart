import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class Support_screen extends StatelessWidget {
  const Support_screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
       final now = new DateTime.now();
    return Scaffold(
       
      body:   Column(
        children: [
          SizedBox(height: 8.h,),
          Padding(
                            padding: EdgeInsets.symmetric(horizontal:2.h),
                            child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                    
                                      
                                      GestureDetector(
                                        onTap: () {
                                       Navigator.pop(context);
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
                                      SizedBox(width: 1.w,),
                                        Expanded(
                                          child: ListTile(
                                          minLeadingWidth: 18,
                                                                                    leading: CircleAvatar(
                                            child: Icon(Icons.person),
                                          ),
                                          title: Text("Admin"),
                                          subtitle: Text("online"),
                                          trailing: Icon(Icons.more_vert),
                                                                                ),
                                        ),
                                      // Text(
                                      //   "Share your feedback",
                                      //   style: TextStyle(fontSize: 15.sp),
                                      // ),
                                     
                                    ],
                                  ),
                          ),
                           Divider(color: Colors.black,),
                           DateChip(date: DateTime(now.year, now.month, now.day - 2),),
                           BubbleNormal(
                            text: "Hello What Can i help you?",
                            isSender: false,
                            tail: true,
                            color: Color(0xffF4F5F6),
                            delivered: true,
                          
                            
                           ),
      
                           BubbleNormal(
                            text: "Hello What Can i help you?",
                            isSender: true,
                            tail: true,
                            color: Color(0xffE6E8EC),
                            delivered: true,
                            seen: true,
                           ),
                           
                             
        ],
      ),
      
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MessageBar(
            
                replyingTo:'eeee',
          
                // messageBarHintText: 'hello',
                  onSend: (_) => print(_),
                   
                ),
        ],
      ),
    );

  }
}