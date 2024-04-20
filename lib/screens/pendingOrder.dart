
import 'package:flutter/material.dart';
import 'package:gemstore/screens/PendingorderDetail.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class pending_order extends StatelessWidget {
  const pending_order({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:  56.h,
      
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (context, index) {
        
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const PendingorderDetail()),
  );
            },
            child: Container(
                    
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
               
               boxShadow:[ 
                  BoxShadow(
                color: Color(0xffF1F2F3),
            blurRadius: 2,
            // blurStyle: BlurStyle.outer,
            // offset: Offset.zero
            offset: Offset(0.0, 5)
                 
                 
                )]
              ),
                
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order #1110", style: TextStyle(fontSize: 13.sp),),
                      Text(  DateFormat.yMd().format(DateTime.now()), style: TextStyle(fontSize: 11.sp), )
                    ],
                  ),
                  SizedBox(height: 2.h,),
                  Row(
                    
                    children: [
                      Text("Tracking Number: "),
                      Text("231652ahv "),
                    ],
                  ),
                   SizedBox(height: 2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("Quantity:"),
                             Text("2")
                        ],
                      ),
                      Row(
                        children: [
                          Text("Subtotal:"),
                              Text("5"),
                        ],
                      ),
                  
                    ],
                  ),
                   SizedBox(height: 2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("PENDING"),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                        
                        onPressed: () {
                        print("object");
                      }, child: Text("Details",style: TextStyle(color: Colors.black),))
                    ],
                  )
                  ],
                ),
              ),
            ),
          ),
        );
      },),
    );
  }
}