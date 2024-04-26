import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class colorpicker extends StatelessWidget {
final Color colorrow;




  const colorpicker({
    super.key, required this.colorrow
  });

  @override
  Widget build(BuildContext context) {


    return Container(
    height: 8.h,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colorrow
                        
      ),
    child:  Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
      height: 8.h,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:colorrow
                          
        ),
                           
                          ),
    ),
                        );
  }
}