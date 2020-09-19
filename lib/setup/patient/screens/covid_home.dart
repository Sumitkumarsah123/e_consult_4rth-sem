import 'package:flutter/material.dart';
import 'package:demo3/setup/patient/screens/covid_19/screen/screens.dart';

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // title: 'Flutter Covid-19 Dashboard UI',
      // debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   scaffoldBackgroundColor: Colors.white,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      body: BottomNavScreen(),
    );
  }
}
