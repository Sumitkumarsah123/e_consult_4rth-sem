import 'package:demo3/setup/patient/patient_login.dart';

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
          children: <Widget>[
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
