import 'package:flutter/material.dart';
//import 'package:school/setup/patient/models/message_model.dart';
//import 'package:school/setup/patient/models/message_model.dart';
//school/commonComponents/customCard.dart';
import 'package:demo3/setup/patient/screens/HomePage.dart';
//import 'package:school/setup/patient/screens/ProfilePage.dart';
import 'package:demo3/setup/patient/screens/ChatPage.dart';
import 'package:demo3/setup/patient/screens/ProfilePage.dart';
import 'package:firebase_auth/firebase_auth.dart';

// class MyApp1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Project',
//       home: MyHomePage(),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  //final String uid;

  @override
  _MyMainPageState createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List _children = [
    HomePage(),
    ChatPage(),
    ProfilePage(),
  ];
  // final tabs place

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  TextEditingController taskTitleInputController;
  TextEditingController taskDescripInputController;
  FirebaseUser currentUser;

  @override
  initState() {
    taskTitleInputController = new TextEditingController();
    taskDescripInputController = new TextEditingController();
    this.getCurrentUser();
    super.initState();
  }

  void getCurrentUser() async {
    currentUser = await FirebaseAuth.instance.currentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Chats'),
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text('Profile'),
            backgroundColor: Colors.deepPurple,
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
