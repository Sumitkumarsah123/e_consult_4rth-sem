import 'package:demo3/setup/category.dart';
//import 'package:demo3/setup/welcome.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';
//import 'package:demo3/setup/login.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: Category(),
      title: new Text(
        'Welcome In E-Consult',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: Image.asset('images/doctor.png'),
      backgroundColor: Colors.blue,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: () => print("Flutter Egypt"),
      loaderColor: Colors.red,
    );
  }
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Category(),
//     );
//   }

// }
