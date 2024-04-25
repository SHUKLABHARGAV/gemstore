import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gemstore/classes/wishlist_data.dart';
import 'package:gemstore/screens/notification_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyWishlistscreen extends StatefulWidget {
  const MyWishlistscreen({Key? key}) : super(key: key);


  @override
  State<MyWishlistscreen> createState() => _MyWishlistscreenState();
}

class _MyWishlistscreenState extends State<MyWishlistscreen> {

  List <Wishlist> wishlist = [
Wishlist(id: 1, wishlistImg:"assets/Images/wishlist1.png" , wishlistTitle: "Front Tie Mini Dress", wishlistPrice: "\$ 59.00"),
Wishlist(id: 2, wishlistImg:"assets/Images/wishlist2.png" , wishlistTitle: "Linen Dress", wishlistPrice: "\$ 52.00"),
Wishlist(id: 3, wishlistImg:"assets/Images/wishlist3.png" , wishlistTitle: "Ohara Dress", wishlistPrice: "\$ 85.00"),
Wishlist(id: 4, wishlistImg:"assets/Images/wishlist4.png" , wishlistTitle: "Tie Back Mini Dress", wishlistPrice: "\$ 67.00"),
Wishlist(id: 5, wishlistImg:"assets/Images/wishlist1.png" , wishlistTitle: "Front Tie Mini Dress", wishlistPrice: "\$ 59.00"),
Wishlist(id: 6, wishlistImg:"assets/Images/wishlist2.png" , wishlistTitle: "Linen Dress", wishlistPrice: "\$ 52.00"),
Wishlist(id: 7, wishlistImg:"assets/Images/wishlist3.png" , wishlistTitle: "Ohara Dress", wishlistPrice: "\$ 85.00"),
Wishlist(id: 8, wishlistImg:"assets/Images/wishlist4.png" , wishlistTitle: "Tie Back Mini Dress", wishlistPrice: "\$ 67.00"),
Wishlist(id: 9, wishlistImg:"assets/Images/wishlist1.png" , wishlistTitle: "Front Tie Mini Dress", wishlistPrice: "\$ 59.00"),
Wishlist(id: 10, wishlistImg:"assets/Images/wishlist2.png" , wishlistTitle: "Linen Dress", wishlistPrice: "\$ 52.00"),
Wishlist(id: 11, wishlistImg:"assets/Images/wishlist3.png" , wishlistTitle: "Ohara Dress", wishlistPrice: "\$ 85.00"),
Wishlist(id: 12, wishlistImg:"assets/Images/wishlist4.png" , wishlistTitle: "Tie Back Mini Dress", wishlistPrice: "\$ 67.00"),
  ];
  
  int selectedtabindex =0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Wishlist"),
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize:17.sp,
            fontFamily: "Product",
            letterSpacing: 1.sp),
        leading: IconButton(
          onPressed: () {},
        icon: Icon(Icons.sort_outlined),
        ),
        actions: [InkWell(
          onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => notificationScreen(),) );
          },
          child: Icon(Icons.notifications_none_rounded))],
      ),
      body: SingleChildScrollView(
        child: Column(
         
          children: [
            Container(
              alignment: Alignment.center,
              child: ToggleSwitch(
                              initialLabelIndex: selectedtabindex,
                              totalSwitches: 2,
                              minWidth: double.infinity,
                              inactiveBgColor: Colors.white,
                              activeBgColor: [Colors.black],
                              activeFgColor: Colors.white,
                              inactiveFgColor: Colors.black,
                              iconSize: 15,
                              cornerRadius: 1,
                              borderColor: [Colors.black],
                              borderWidth: 1.5,
                              // inactiveFgColor: Colors.white,
                              // icons: [Icons.light_mode_outlined , Icons.dark_mode_outlined],
                              labels: [ 'All items', 'Boards'],
                              customTextStyles: [TextStyle(fontWeight: FontWeight.bold  )],
                               onToggle: (index) {
                                print('switched to: $index');
                                setState(() {
                                  selectedtabindex=index ?? 0;
                                });
                              },
                        
                            ),
            ),
            if( 
              selectedtabindex==0
            )...[GridView.builder(
              itemCount:wishlist.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2/3), 
              
              itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.h,vertical: 2.h),
                child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 38.w,
                        child: ClipRRect(
                        
                                    borderRadius: BorderRadius.circular(16),
                                      child: Image.asset(wishlist[index].wishlistImg,fit: BoxFit.fill,),),
                      ),
                      // Container(
                      //   height: 25.h,
                      //   width: 40.w,
                      //   decoration: BoxDecoration(
                      //     // color: Colors.amber,
                      //     borderRadius: BorderRadius.circular(18),
                      //     border: Border.all()
                      //     // image: DecorationImage(image: AssetImage("assets/Images/wishlist1.png"))
                      //   ),
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(8.0),
                      //     child: Image.asset("assets/Images/wishlist2.png",fit: BoxFit.fill,),
                      //   ),
                      // ),
                      SizedBox(height: 1.h,),
                        Text(wishlist[index].wishlistTitle),
                        Text(wishlist[index].wishlistPrice),
                          RatingBar.builder(
                                 initialRating: 3,
                                 minRating: 1,
                                 direction: Axis.horizontal,
                                 allowHalfRating: true,
                                 itemCount: 5,
                                 itemSize: 15,
                                 itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                 itemBuilder: (context, index) => Icon(
                       Icons.star,
                       color:Color(0xff508A7B),
                       size: 15,
                                 ),
                                 onRatingUpdate: (rating) {
                       print(rating);
                                 },
                              ),
                              
                    ],
                  ),
                  Positioned(
                    left: 12.5.h,
                    top: 0.5.h,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.favorite_rounded,color: Color(0xffFF6E6E),),
                    ),
                  )
                ],
                          ),
              );
            },),]
            else...[
              SizedBox(height: 2.h,),
              ListView.builder(
                itemCount: 4,

                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                return Padding(
                padding: const EdgeInsets.all(.0),
                child: Column(
                  children: [

                    StaggeredGrid.count(
  crossAxisCount: 3,
  mainAxisSpacing: 3,
  crossAxisSpacing: 4,
  children: [
    StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 2,
      child: Image.asset("assets/Images/wishlist1.png",fit: BoxFit.fitHeight,),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 1,
      child:Image.asset("assets/Images/wishlist1.png",fit: BoxFit.fitHeight,),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: Image.asset("assets/Images/wishlist1.png",fit: BoxFit.fitHeight,),
    ),
    
  ],
            
),
            
                    //  Container(
                    //   width: 95.8.w,
                    //   height: 20.h,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(16),
                    //     border: Border.all()
                                              

                    //   ),
                    //   child:Row(
                    //     children: [
                    //       Image.asset("assets/Images/wishlist1.png",fit: BoxFit.contain,),
                    //       // Image.asset("assets/Images/wishlist1.png",fit: BoxFit.fitHeight,),
                    //       // Image.asset("assets/Images/wishlist1.png",fit: BoxFit.fitHeight,),
                    //     ],
                    //   ) ,
                    //  ),
                     ListTile(
                      title: Text("Going out outfits",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                      subtitle: Text("36"),
                      trailing: Icon(Icons.arrow_forward_ios_sharp),
                     ),
                     Divider(color: Color(0xffE8E8E8),),
                     SizedBox(height: 2.h,)
                  ],
                ),
              );
              },)
              
            ]



            
           
          ],
        ),
      ),
    );
  }
}
