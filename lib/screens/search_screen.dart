import 'package:another_xlider/another_xlider.dart';
import 'package:flutter/material.dart';
import 'package:gemstore/classes/popular_model.dart';
import 'package:gemstore/screens/popular_search_screen.dart';
// import 'package:gemstore/screens/recent_searches.dart';

import 'package:sizer/sizer.dart';

class Search_screen extends StatefulWidget {
  const Search_screen({
    super.key,
  });
  @override
  State<StatefulWidget> createState() {
    return search_screenState();
  }
}

class search_screenState extends State<Search_screen> {
  
      
List<PopularData> popularData=[
PopularData(id: 1, popularimg: "assets/Images/popular1.png", populartext: "Lihua Tunic White", popularprice: "\$ 53.00"),
PopularData(id: 2, popularimg: "assets/Images/popular2.png", populartext: "Skirt Dress", popularprice: "\$ 34.00"),

];
  List<String> Data=[
  "Sunglasses",
  "Sweters",
  "Hoodie",
];
List<String> recentSearch=[
  "Sunglasses",
  "Sweters",
  "Hoodie",
];
List<Color> colorData=[
  Color(0xffCE8722),
  Color(0xffDC4447),
  Color(0xff181E27),
  Color(0xff44565C ),
  Color(0xffE4E4E4),
  Color(0xff6D4F44),
  Color(0xffDFA8A9),
];
  int lValue = 50;
  int uValue = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color(0xffFAFAFA),
      endDrawer: Drawer(
        child: Padding(
          padding: EdgeInsets.only(top:  8.h),
          child: Padding( 
            padding: const EdgeInsets.all(8.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Filter", style: TextStyle(fontSize: 18.sp),),
                    Icon(Icons.tune, size: 30,),
                  ],
                ),
                SizedBox(height: 5.h,),
                Text("Price", style: TextStyle(fontSize: 12.sp),),
            //    RangeSlider(
                 
            //        min: 5, 
            // max: 100, 
            //       value: RangeValues(start, end) , 
            //       labels: RangeLabels(start.toString(), end.toString()), 
            //     onChanged: (value) {
            //        setState(() { 
            //     start = value.start; 
            //     end = value.end; 
            //   }); 
            //     },
                
            //     ),
            //      Text( 
            // "\$" +    start.toStringAsFixed(2) +  "\nEnd: " + 
            //     end.toStringAsFixed(2),  
            // style: const TextStyle( 
            //   fontSize: 15.0, 
            // ), 
            //      ),
                 FlutterSlider(
  values: [10, 80],
  rangeSlider: true,
  max: 110,
  min: 0,
  
  onDragging: (handlerIndex, lowerValue, upperValue) {
    lValue = lowerValue;
    uValue = upperValue;
    setState(() {});
  },
),
Text("Color"),
Container(
  height: 5.h,
 
 
  child: ListView.builder(
    shrinkWrap: true,
    
    scrollDirection: Axis.horizontal,
    itemCount: colorData.length,
    itemBuilder: (context, index) {
    return Padding(
      
      padding: const EdgeInsets.all(12.0),
      child: Container( 
      
        decoration: BoxDecoration(
        color: colorData[index],
        shape: BoxShape.circle
      ),
    child:Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
           decoration: BoxDecoration(
          color: colorData[index],
          shape: BoxShape.circle
        ),
      ),
    ),
      ),
    );
  },),
),
Text("Star Ratings"),
Container(
  color: Colors.blueAccent,
height: 15.h, 
  child: ListView.builder(
    shrinkWrap: true,
    
    scrollDirection: Axis.horizontal,
    itemCount: 1,

    itemBuilder: (context, index) {
    return 
      
 
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: Container(
         height: 50,
        decoration: BoxDecoration(
               color: Colors.amber,
              shape: BoxShape.circle
            ),
         
         child: Row(
           children: [
             Center(child: Text("hello")),
            
           ],
         ),
       ),
     );
  },),
),

                    
              ],
            ),
          ),
        ),
        
        
      ),
    
       
       
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8.h,
              ),
              Container(
                
                height: 5.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffFFFFFF)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.arrow_back_ios,
                  size: 30,),
                )
              ),
               SizedBox(
                height: 3.h,
              ),
             
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 78.w,
                    child: FloatingActionButton(
                      backgroundColor: Color(0xffFAFAFA),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.search,
                            color: Color(0xff777E90)),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text("Search",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Color(0xff777E90)
                            ),)
                          ],
                        ),
                      ),
                        onPressed: () {
                          setState(() {
                             
                          });
                        },
                       ),
                  ),
                  FloatingActionButton(
                    backgroundColor:  Color(0xffFAFAFA),
                    onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  child: Icon(Icons.tune),
                  )
                ],
              ),
              SizedBox(height: 2.h,),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recent Searches",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: "Nunito-SemiBold",
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                    ),),
                    Icon(Icons.delete,
                    color: Colors.grey ,)
                  ],
                ),
                
              ),
               Container(
              
                 child: GridView.builder(
                  itemCount: recentSearch.length,
                  
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 3), itemBuilder: (context, index) {
                   return  Padding(
                     padding: EdgeInsets.symmetric(horizontal:  8.0 , vertical: 1.h),
                     child: Container( 
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xffF1F2F3)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(recentSearch[index]),
                            Icon(Icons.close)
                          ],
                        ),
                      ),
                     ),
                   );
                 },),
               ),
               Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ 
                  Text("Popular this week", style: TextStyle( fontSize: 14.sp)),
                  TextButton(
                    onPressed: () {
                    
                  },
                    child: Text("Show all", style: TextStyle(color: Color(0xff9B9B9B),), 
                    ),
                  )
                ],
               ),
popular_search_screen(popularData:popularData)
             
              
            ],
          ),
        ));
  }
}

