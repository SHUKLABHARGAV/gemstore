 
import 'package:drop_down_search_field/drop_down_search_field.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:gemstore/classes/popular_model.dart';
import 'package:gemstore/classes/wishlist_data.dart';
import 'package:gemstore/screens/customeSearch.dart';
import 'package:gemstore/screens/discover_Filter_screen.dart';
import 'package:gemstore/screens/customeSearchresult.dart';
import 'package:gemstore/screens/home_page.dart';
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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _dropdownSearchFieldController = TextEditingController();
     String? _selectedFruit;

  SuggestionsBoxController suggestionBoxController = SuggestionsBoxController();
  

  List<PopularData> popularData = [
    PopularData(
        id: 1,
        popularimg: "assets/Images/popular1.png",
        populartext: "Lihua Tunic White",
        popularprice: "\$ 53.00"),
    PopularData(
        id: 2,
        popularimg: "assets/Images/popular2.png",
        populartext: "Skirt Dress",
        popularprice: "\$ 34.00"),
        PopularData(
        id: 3,
        popularimg: "assets/Images/recent3.png",
        populartext: "Skirt Dress",
        popularprice: "\$ 34.00"),
  ];
  List<String> Data = [
    "Sunglasses",
    "Sweters",
    "Hoodie",
  ];
  List<String> recentSearch = [
    "Sunglasses",
    "Sweters",
    "Hoodie",
  ];
  List<Color> colorData = [
    Color(0xffCE8722),
    Color(0xffDC4447),
    Color(0xff181E27),
    Color(0xff44565C),
    Color(0xffE4E4E4),
    Color(0xff6D4F44),
    Color(0xffDFA8A9),
  ];
  List<Icon> Iconlist =[
    Icon(Icons.star),
    Icon(Icons.star),
    Icon(Icons.star),
    Icon(Icons.star),
    Icon(Icons.star),
  ];
    List<String> Star =[
    "1",
    "2",
    "3",
    "4",
    "5",
  ];
  final List<String> catagoryItems = [
  'Tops',
  'Jeans',
  'T-shirts',
];
   static final List<String> fruits = [
    'Dress',
    'Avocado',
    'Banana',
    'Blueberries',
    'Blackberries',
    'Cherries',
    'Grapes',
    'Grapefruit',
    'Guava',
    'Kiwi',
    'Lychee',
    'Mango',
    'Orange',
    'Papaya',
    'Passion fruit',
    'Peach',
    'Pears',
    'Pineapple',
    'Raspberries',
    'Strawberries',
    'Watermelon',
  ];
static List<String> getSuggestions(String query) {
    List<String> matches = <String>[];
    matches.addAll(fruits);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        key: _scaffoldKey,
        backgroundColor: Color(0xffFAFAFA),
          endDrawerEnableOpenDragGesture: false,
        endDrawer: Drawer(
 width: 38.h,
          child: Discover_fillter(colorData: colorData, ),
        ),
        body: SingleChildScrollView(
          child: Padding(
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
                        shape: BoxShape.circle, color: Color(0xffFFFFFF)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                      ),
                    )),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   
                    SizedBox(
                      
                   width: 78.w,
                   child:  DropDownSearchField(
                    
                    textFieldConfiguration: TextFieldConfiguration(
                  decoration: const InputDecoration(labelText: 'Fruit'),
                  controller: _dropdownSearchFieldController,
                ),
                    suggestionsCallback: (pattern) {
                      return getSuggestions(pattern);
                    },
                     itemBuilder: (context, String suggestion) {
                  return ListTile(
                    title: Text(suggestion),
                  );
                },
                 itemSeparatorBuilder: (context, index) {
                  return const Divider();
                },
                transitionBuilder: (context, suggestionsBox, controller) {
                  return suggestionsBox;
                },
                  onSuggestionSelected: (String suggestion) {
                  _dropdownSearchFieldController.text = suggestion;
                       
                  print(suggestion);
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CustomeSearch(Suggestion: suggestion,),));
                },



                  


                   suggestionsBoxController: suggestionBoxController,
               
                displayAllSuggestionWhenTap: true,
                   )
                
                   ),
                    FloatingActionButton(
                      backgroundColor: Color(0xffFAFAFA),
                       onPressed: () =>  _scaffoldKey.currentState?.openEndDrawer(),
                      child: Icon(Icons.tune),
                    )
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent Searches",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: "Nunito-SemiBold",
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.delete,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                Container(
                  child: GridView.builder(
                    itemCount: recentSearch.length,
                    padding: EdgeInsets.all(0),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 3),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8.0, vertical: 1.h),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color(0xffF1F2F3)),
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
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular this week", style: TextStyle(fontSize: 14.sp)),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Show all",
                        style: TextStyle(
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                    )
                  ],
                ),
                popular_search_screen(popularData: popularData),
                SizedBox(
                  height: 2.h,
                ),
                
              
               
              ],
            ),
          ),
        ));
  }
}

 