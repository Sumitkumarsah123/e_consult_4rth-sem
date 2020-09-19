// import 'package:demo3/setup/login.dart';
// import 'package:demo3/setup/register.dart';
import 'package:demo3/setup/patient/patient_login.dart';
//import 'package:demo3/setup/doctor/doctor_login.dart';
//import 'package:demo3/setup/loading.dart';

import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text("welcome To E-Consult"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Column(
            //   children: <Widget>[
            //     SizedBox(height: 30),
            //     CircleAvatar(
            //       backgroundColor: Colors.black.withOpacity(0.2),
            //       radius: 70,
            //       child: Image(image: AssetImage("images/doctor.png")),
            //     ),
            //     Container(
            //       height: MediaQuery.of(context).size.height * 0.05,
            //       width: MediaQuery.of(context).size.width * 0.5,
            //       child: RaisedButton(
            //         onPressed: () {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(builder: (context) => DocLoginPage()),
            //           );
            //         },
            //         color: Colors.white,
            //         child: Text(
            //           "I am Doctor",
            //           style:
            //               TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            //         ),
            //         shape: StadiumBorder(),
            //       ),
            //     ),
            //   ],
            // ),
            SizedBox(height: 70),
            Column(
              children: <Widget>[
                SizedBox(height: 50),
                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.2),
                  radius: 70,
                  child: Image(image: AssetImage("images/patient.png")),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: RaisedButton(
                    onPressed: () {
                      // LoginPage();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    color: Colors.white,
                    child: Text(
                      "I am Patient",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    shape: StadiumBorder(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// void navigatetoSignIn() {
//   Navigator.push(
//       context,
//       MaterialPageRoute(
//           builder: (context) => LoginPage(), fullscreenDialog: true));
// }

//   void navigatetoRegister() {
//     Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (context) => Register(), fullscreenDialog: true));
//   }
// }
