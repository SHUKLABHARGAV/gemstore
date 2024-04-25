import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Language_screen extends StatefulWidget {
  const Language_screen({Key? key}) : super(key: key);

  @override
  State<Language_screen> createState() => _Language_screenState();
}

class _Language_screenState extends State<Language_screen> {
   bool isNotificationon = true;
   bool isNotificationSoundon = true;
   bool isLockScreenon = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body:  Column(
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
                                            
                                              
                                            Text(
                                              "Notification",
                                              style: TextStyle(fontSize: 15.sp),
                                            ),
                                               Text(
                                              " ",
                                              style: TextStyle(fontSize: 15.sp),
                                            ),
                                           
                                          ],
                                        ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ListTile(
                                    title: Text("Show notifications"),
                                    subtitle: Text("Receive push notifications for new messages",style: TextStyle(fontSize: 12),),
                                  
                                    trailing: Switch(value:isNotificationon, 
                                    activeColor: Color(0xff508A7B),
                                    activeTrackColor: Color(0xff508A7B),
                                    thumbColor: MaterialStatePropertyAll(Colors.white),
                                    onChanged: (bool value) {
                                      setState(() {
                                        isNotificationon = value;
                                      });
                                    },),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ListTile(
                                    title: Text("Notification sounds"),
                                    subtitle: Text("Play sound for new messages",style: TextStyle(fontSize: 12),),
                                  
                                    trailing: Switch(value: isNotificationSoundon, 
                                    activeColor: Color(0xff508A7B),
                                    activeTrackColor: Color(0xff508A7B),
                                    thumbColor: MaterialStatePropertyAll(Colors.white),
                                    onChanged: (bool value) {
                                      setState(() {
                                        isNotificationSoundon = value;
                                      });
                                    },),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ListTile(
                                    title: Text("Lock screen notifications"),
                                    subtitle: Text("Allow notification on the lock screen",style: TextStyle(fontSize: 12),),
                                  
                                    trailing: Switch(value:isLockScreenon, 
                                    activeColor: Color(0xff508A7B),
                                    activeTrackColor: Color(0xff508A7B),
                                    thumbColor: MaterialStatePropertyAll(Colors.white),
                                    onChanged: (bool value) {
                                      setState(() {
                                        isLockScreenon = value;
                                      });
                                    },),
                                  ),
                                ),
                                
        ],
      ),
    );
  }
}
