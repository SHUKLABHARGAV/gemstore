import 'package:flutter/material.dart';
import 'package:gemstore/classes/HomeSidebar.dart';
import 'package:sizer/sizer.dart';

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
             Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: sidebarIteam.length,
                      
                      itemBuilder: (context, index) {
                      return ListTile(
                        leading: sidebarIteam[index].sidebarIcon,
                        title: Text(sidebarIteam[index].sidebarTitle),
                      );
                    },),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 6.h,
                      width: 30.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        shape: BoxShape.rectangle,
                        color: Color.fromARGB(255, 183, 182, 182)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [ 
                          ElevatedButton(onPressed: () {
                            
                          }, child: Row(
                            children: [
                              Icon(Icons.light_mode , color: Colors.black,),
                                SizedBox(width: 1.h,),
                              Text("Light",style: TextStyle(color: Colors.black),),
                            ],
                          )),
                               SizedBox(width: 1.h,),
                          ElevatedButton(onPressed: () {
                            
                          }, child: Row(
                            children: [
                              Icon(Icons.dark_mode_outlined,color: Colors.black),
                              SizedBox(width: 1.h,),
                              Text("Dark",style: TextStyle(color: Colors.black),),
                            ],
                          ))
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}