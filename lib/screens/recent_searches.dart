
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Recentsearch extends SearchDelegate{

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
  @override
  List<Widget>? buildActions(BuildContext context) {
   return <Widget>[IconButton(onPressed: () {
     
   }, icon:Icon(Icons.delete))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
   return IconButton(onPressed:  () {
     
   }, icon: Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildResults(BuildContext context) {
    
    return Text("data");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions

    return  ListView.builder(
      itemCount: recentSearch.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 5.h,
            width: 30.w,
            child: Badge(
              backgroundColor: Colors.amber,
              label: Text(recentSearch[index]),
            ),
          ),
        );
      },
    );
  }

}