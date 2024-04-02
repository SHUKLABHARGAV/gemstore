import 'package:flutter/cupertino.dart';
import 'package:gemstore/classes/recommanded_product.dart';
import 'package:gemstore/utils/color_helper.dart';
import 'package:sizer/sizer.dart';

class recommanded_product extends StatelessWidget {
  const recommanded_product({
    super.key,
    required this.recommanded,
  });

  final List<Recommanded_product> recommanded;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  8.0),
      child: Container(
        height: 12.h,
        
        
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              
              decoration: BoxDecoration(
                color: Colorhelper.recommand_bg,
                borderRadius: BorderRadius.circular(10)
              ),
            
              child: Row(
                children: [ 
                  ClipRRect(
                    
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(recommanded[index].recomandedImg,
                    height: 12.h,
                    fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal:  2.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: [
                        Text(recommanded[index].recomandedTitle,
                        style: TextStyle(
                          color: Colorhelper.recommand_text,
                          fontFamily: 'Product',
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp
                        ),
                        ),
                        Text(recommanded[index].recomandedPrice,
                         style: TextStyle(
                          color: Colorhelper.recommand_text,
                          fontFamily: 'Product',
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp
                        ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },),
      ),
    );
  }
}
