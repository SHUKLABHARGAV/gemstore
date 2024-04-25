import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customUserprofile extends StatelessWidget {

final IconData profileIcon;
final String profileText;

  const customUserprofile({super.key, required this.profileIcon,required this.profileText});
  



  @override
  Widget build(BuildContext context) {
 
    return  Column(
      children: [
        ListTile(
          tileColor: Colors.white,
          leading:Icon(
            profileIcon
            ),
          title: Text(
            profileText,
            style: TextStyle(fontFamily: 'Product'),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(
          color: Color(0xffF3F3F6),
        )
      ],
    );
  }
}
