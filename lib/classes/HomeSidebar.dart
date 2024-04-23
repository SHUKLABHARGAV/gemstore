import 'package:flutter/material.dart';

class Home_sidebar {
  final int id;
  final Icon ?sidebarIcon;
  final String sidebarTitle;

  Home_sidebar(
      {required this.id,
      this.sidebarIcon,
      required this.sidebarTitle});
}
