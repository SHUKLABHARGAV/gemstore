import 'package:another_xlider/another_xlider.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gemstore/screens/colorpicker.dart';
import 'package:sizer/sizer.dart';
 
class Discover_fillter extends StatelessWidget {
  Discover_fillter({
    super.key,
    required this.colorData,
   
  });

  final List<Color> colorData;
   final List<String> catagoryItems = [
  'Tops',
  'Jeans',
  'T-shirts',
];

 
  String? selectedValue;
  int lValue = 50;
  int uValue = 200;
  

  @override
  Widget build(BuildContext context) {
 
  
    return  Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Filter",
                        style: TextStyle(fontSize: 18.sp),
                      ),
                      Icon(
                        Icons.tune,
                        size: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Price",
                    style: TextStyle(fontSize: 12.sp),
                  ),
                  
                  FlutterSlider(
                    values: [10, 80],
                    rangeSlider: true,
                    max: 110,
                    min: 0,
                    onDragging: (handlerIndex, lowerValue, upperValue) {
                      lValue = lowerValue;
                      uValue = upperValue;
                      
                    },
                  ),
                  Text("Color"),
                  Row(
                    children: [ 
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: colorpicker( colorrow: Colors.black,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: colorpicker( colorrow: Colors.blue,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: colorpicker( colorrow: Colors.green,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: colorpicker( colorrow: Colors.pink,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: colorpicker( colorrow: Colors.grey,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: colorpicker( colorrow: Colors.amber,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: colorpicker( colorrow: Colors.yellow,),
                      ),
                     
                     
                    

                    ],
                  ),
                  
            
                  Text("Star Ratings"),
                  Container(
                                // alignment: Alignment.center,
                                height: 6.h,
                                width: 100.h,
                                // color: Colors.amber,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.all(0),
                                  shrinkWrap: true,
                                  itemCount: 5,
                  
                                  itemBuilder: (context, index) {
                  return Column(
                                 
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1.h),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black)
                              // color: Colors.black,
                              ),
                          child: Padding(
                            padding: EdgeInsets.all(0),
                            child: Container(
                              alignment: Alignment.center,
                              height: 5.h,
                              width: 10.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                 ),
                              child: Row( mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Icon(Icons.star),
                                  Text("1"),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                     
                    ],
                  );
                                  },
                                ),
                              ),
                  Text("Catagory"),
                  SizedBox(
                    height: 2.h,
                  ),
                    DropdownButtonFormField2<String>(
              isExpanded: true,
              
              decoration: InputDecoration(
                // Add Horizontal padding using menuItemStyleData.padding so it matches
                // the menu padding when button's width is not specified.

                contentPadding: EdgeInsets.symmetric(vertical: 13),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                // Add more decoration..
              ),
              hint: Text(
                'Select Your Catagory',
                style: TextStyle(fontSize: 14),
              ),
              items: catagoryItems
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                  .toList(),
              validator: (value) {
                if (value == null) {
                  return 'Please select catagory.';
                }
                return null;
              },
              onChanged: (value) {
                //Do something when selected item is changed.
              },
              onSaved: (value) {
                selectedValue = value.toString();
              },
              buttonStyleData: ButtonStyleData(
                padding: EdgeInsets.only(right: 8),
              ),
              iconStyleData: IconStyleData(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black45,
                ),
                iconSize: 24,
              ),
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              menuItemStyleData: MenuItemStyleData(
                padding: EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
           SizedBox(height: 2.h),
            Text("Discount"),
              
               Container(
                
                child: GridView.builder(
                  itemCount:4,
                                                padding: EdgeInsets.all(0),

                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 2.9,),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 2.0, vertical: 1.h),
                      child: Container(
                       
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border:  Border.all( 
                            color: Colors.black
                          ),
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xffF1F2F3)),
                            
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("50 \%"),
                              Icon(Icons.close)
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    ElevatedButton(onPressed: () {
                      
                    }, child: Text("Reset")),
                    ElevatedButton(onPressed: () {
                      
                    }, child: Text("Apply"))
                  ],
                ),
              )


            
                 ],
              ),
            ),
          );
  }
}


