import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gemstore/classes/wishlist_data.dart';
import 'package:gemstore/utils/color_helper.dart';
import 'package:sizer/sizer.dart';

class Collectionviews extends StatefulWidget {

  const Collectionviews({Key? key}) : super(key: key);

  @override
  State<Collectionviews> createState() => _CollectionviewsState();
}

class _CollectionviewsState extends State<Collectionviews> {



 bool selecteidfavourite = false;




        List <Wishlist> wishlist = [
Wishlist(id: 1, wishlistImg:"assets/Images/wishlist1.png" , wishlistTitle: "Front Tie Mini Dress", wishlistPrice: "\$ 59.00",isFavourite: false),
Wishlist(id: 2, wishlistImg:"assets/Images/wishlist2.png" , wishlistTitle: "Linen Dress", wishlistPrice: "\$ 52.00",isFavourite: false),
Wishlist(id: 3, wishlistImg:"assets/Images/wishlist3.png" , wishlistTitle: "Ohara Dress", wishlistPrice: "\$ 85.00",isFavourite: false),
Wishlist(id: 4, wishlistImg:"assets/Images/wishlist4.png" , wishlistTitle: "Tie Back Mini Dress", wishlistPrice: "\$ 67.00",isFavourite: false),
Wishlist(id: 5, wishlistImg:"assets/Images/wishlist1.png" , wishlistTitle: "Front Tie Mini Dress", wishlistPrice: "\$ 59.00",isFavourite: false),
Wishlist(id: 6, wishlistImg:"assets/Images/wishlist2.png" , wishlistTitle: "Linen Dress", wishlistPrice: "\$ 52.00",isFavourite: false),
Wishlist(id: 7, wishlistImg:"assets/Images/wishlist3.png" , wishlistTitle: "Ohara Dress", wishlistPrice: "\$ 85.00",isFavourite: false),
Wishlist(id: 8, wishlistImg:"assets/Images/wishlist4.png" , wishlistTitle: "Tie Back Mini Dress", wishlistPrice: "\$ 67.00",isFavourite: false),
Wishlist(id: 9, wishlistImg:"assets/Images/wishlist1.png" , wishlistTitle: "Front Tie Mini Dress", wishlistPrice: "\$ 59.00",isFavourite: false),
Wishlist(id: 10, wishlistImg:"assets/Images/wishlist2.png" , wishlistTitle: "Linen Dress", wishlistPrice: "\$ 52.00",isFavourite: false),
Wishlist(id: 11, wishlistImg:"assets/Images/wishlist3.png" , wishlistTitle: "Ohara Dress", wishlistPrice: "\$ 85.00",isFavourite: false),
Wishlist(id: 12, wishlistImg:"assets/Images/wishlist4.png" , wishlistTitle: "Tie Back Mini Dress", wishlistPrice: "\$ 67.00",isFavourite: false),
  ];



  @override

  
  Widget build(BuildContext context) {
  
  
  
  
 
    return Scaffold(
        body: Stack(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 30.h,
          width: double.infinity,
          alignment: Alignment.topLeft,
          decoration: const BoxDecoration(
              // color: Colors.amber,

              image: DecorationImage(
                  image: AssetImage("assets/Images/hompage_slider.png"),
                  fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.h,left: 3.h),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal:  6.0),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        
                      ),
                      
                    ),
                  ),
                ),
                 Padding(
                   padding: EdgeInsets.only(top:5.h),
                   child: SizedBox(
                    width: 28.w,
                     child: Text(
                                          "Autumn Collection 2022",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              color: Colorhelper.White),
                                          textAlign: TextAlign.justify,
                                        ),
                   ),
                 ),
              ],
            ),
          ),
        ),

        //  Positioned(
        //   top: 5.h,
        //   left: 2.5.h,
        //    child:
        Container(
          margin: EdgeInsets.only(top: 27.h),
          height: 80.h,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),
          color: Colors.white,
          ),
          child:  SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: GridView.builder(
                
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
                          child: InkWell(
                            onTap: () {
                                 Wishlist  wishlistdata= wishlist.firstWhere((element) => element.id == wishlist[index].id);
                   int  wishlistIndex= wishlist.indexWhere((element) => element.id == wishlist[index].id);
                   Wishlist newWishlistData = Wishlist(id: wishlistdata.id, wishlistImg:wishlistdata.wishlistImg , wishlistTitle: wishlistdata.wishlistTitle , wishlistPrice:wishlistdata.wishlistPrice, isFavourite:wishlistdata.isFavourite == true ? false:true);
                   wishlist[wishlistIndex]=newWishlistData;
                   setState(() {
                     print(wishlistIndex);
                   });
                             
                            },
                            
                        child: wishlist[index].isFavourite ? Icon(Icons.favorite_rounded,color: Color(0xffFF6E6E),) : Icon(Icons.favorite_rounded,color: Colors.grey,)
                            
                            
                            ),
                        ),
                      )
                    ],
                              ),
                  );
                },),
            ),
          ),
          ),
      
      ],
    ));
  }
}
