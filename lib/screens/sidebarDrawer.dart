import 'package:flutter/material.dart';
import 'package:gemstore/classes/HomeSidebar.dart';
import 'package:gemstore/screens/setting_screen.dart';
import 'package:gemstore/screens/suportscreen.dart';
import 'package:sizer/sizer.dart';
import 'package:toggle_switch/toggle_switch.dart';

class sidebarDrawer extends StatelessWidget {
  const sidebarDrawer({
    super.key,
    required this.sidebarIteam,
  });

  final List<Home_sidebar> sidebarIteam;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 38.h,
      child: Padding(
        padding: EdgeInsets.only(top: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: [ 
            Container(
        
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   SizedBox(height: 10.h,),
                  Container(
             
                    height:5.h,
                    width: 5.h,
                    decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage("assets/Images/profile_image.png",))
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.h),
                    child: Column( 
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sunie Pham",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
                        Text("sunieux@gmail.com", style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                 
                ],
              ),
            ),
            SizedBox(height: 5.h,),
            Column(
              children: [
                ListTile(
                            leading: Icon(Icons.home_rounded),
                            title: Text("Homepage"),
                          ),
                ListTile(
                            leading: Icon(Icons.search),
                            title: Text("Discover"),
                          ),
                ListTile(
                            leading: Icon(Icons.shopping_bag_outlined),
                            title: Text("My Order"),
                          ),
                ListTile(
                            title: Text("My profile"),
                            leading: Icon(Icons.person_3_outlined),
                          ),
                ListTile(
                            leading:Text("OTHER",style: TextStyle(fontSize: 12.sp),),
                ),
                ListTile(
                            leading: Icon(Icons.settings_outlined),
                            title: Text("Setting"),
                            onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) => Setting_screen(),));
                          
                            },
                          ),
                ListTile(
                  autofocus: true,
                  
                            leading: Icon(Icons.email_outlined  ),
                            title: Text("Support"),
                          
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Support_screen(),));
                            },
                          ),
                ListTile(
                            leading: Icon(Icons.info_outline),
                            title: Text("About us"),
                          ),
                
              ],
            ),
             SizedBox(height: 10.h,),
            //  Expanded(
            //         child: ListView.builder(
            //           shrinkWrap: true,
            //           itemCount: sidebarIteam.length,
                      
            //           itemBuilder: (context, index) {
            //           return ListTile(
            //             leading: sidebarIteam[index].sidebarIcon,
            //             title: Text(sidebarIteam[index].sidebarTitle),
            //           );
            //         },),
            //       ),
            Container(
              
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ToggleSwitch(
                      initialLabelIndex: 0,
                      totalSwitches: 2,
                      minWidth: 25.w,
                      activeBgColor: [Color(0xffffffff)],
                      iconSize: 15,
                      cornerRadius: 30,
                      // inactiveFgColor: Colors.white,
                      // icons: [Icons.light_mode_outlined , Icons.dark_mode_outlined],
                      labels: [ 'Light', 'Dark'],
                      customTextStyles: [TextStyle(color: Colors.black)],
                      customIcons: [Icon(Icons.light_mode, color: Colors.black,),Icon(Icons.dark_mode_outlined, color: Colors.black,)],
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                
                    ),
              ),
            ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(
                  //     height: 6.h,
                  //     width: 30.h,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(22),
                  //       shape: BoxShape.rectangle,
                  //       color: Color.fromARGB(255, 183, 182, 182)
                  //     ),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [ 
                  //         ElevatedButton(onPressed: () {
                            
                  //         }, child: Row(
                  //           children: [
                  //             Icon(Icons.light_mode , color: Colors.black,),
                  //               SizedBox(width: 1.h,),
                  //             Text("Light",style: TextStyle(color: Colors.black),),
                  //           ],
                  //         )),
                  //              SizedBox(width: 1.h,),
                  //         ElevatedButton(onPressed: () {
                            
                  //         }, child: Row(
                  //           children: [
                  //             Icon(Icons.dark_mode_outlined,color: Colors.black),
                  //             SizedBox(width: 1.h,),
                  //             Text("Dark",style: TextStyle(color: Colors.black),),
                  //           ],
                  //         ))
                  //       ],
                  //     ),
                  //   ),
                  // ),
          ],
        ),
      ),
    );
  }
}