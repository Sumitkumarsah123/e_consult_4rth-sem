import 'package:demo3/setup/patient/screens/covid_19/config/color.dart';
//package:econsult_new_project/screens/HomePage.dart
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.primaryColor,
      elevation: 0.0,
      leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
      actions: <Widget>[
        IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
