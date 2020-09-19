//import 'package:demo3/home/home.dart';
//import 'package:demo3/home/home1.dart';
//import 'package:demo3/home/home1.dart';
//import 'package:demo3/setup/patient/screens/covid_19/screen/Video.dart';
//import 'package:demo3/setup/patient/screens/HomePage.dart';
import 'package:demo3/setup/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:demo3/setup/patient/patient_register.dart';
import 'package:flutter/material.dart';
import 'package:demo3/setup/animation.dart';
import 'package:demo3/setup/loading.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool loading = false;
  //String error;
  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            //key: _scaffoldKey,
            body: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                Colors.blue[900],
                Colors.orange[800],
                Colors.orange[400]
              ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                            1,
                            Text(
                              "Patient Login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        FadeAnimation(
                            1.3,
                            Text(
                              "Welcome ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60))),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.all(30),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 60,
                                ),
                                FadeAnimation(
                                    1.4,
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color.fromRGBO(
                                                    225, 95, 27, .3),
                                                blurRadius: 20,
                                                offset: Offset(0, 10))
                                          ]),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color:
                                                            Colors.grey[200]))),
                                            child: TextFormField(
                                              validator: (input) =>
                                                  input.isEmpty
                                                      ? 'enter an email'
                                                      : null,
                                              onSaved: (input) =>
                                                  _email = input,
                                              decoration: InputDecoration(
                                                  icon: Icon(Icons.email),
                                                  hintText: "Email",
                                                  hintStyle: TextStyle(
                                                      color: Colors.black),
                                                  border: InputBorder.none),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color:
                                                            Colors.grey[200]))),
                                            child: TextFormField(
                                              validator: (input) =>
                                                  input.isEmpty
                                                      ? 'enter an password'
                                                      : null,
                                              onSaved: (input) =>
                                                  _password = input,
                                              decoration: InputDecoration(
                                                  icon: Icon(Icons.lock),
                                                  hintText: "Password",
                                                  hintStyle: TextStyle(
                                                      color: Colors.black),
                                                  border: InputBorder.none),
                                              obscureText: true,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                                SizedBox(
                                  height: 40,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 250,
                                  height: 50,
                                  child: RaisedButton(
                                    textColor: Colors.white,
                                    color: Colors.orange[900],
                                    child: Text(
                                      "LogIn",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: _loginAccount,
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(50.0),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                // Text(
                                //   error,
                                //   style: TextStyle(
                                //       color: Colors.red, fontSize: 14),
                                // ),
                                FadeAnimation(
                                    1.7,
                                    Text(
                                      "Don't have a account?",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  height: 20,
                                ),

                                // padding: EdgeInsets.only(left: 150.0, right: 0.0),
                                Container(
                                  width: 250,
                                  height: 50,
                                  child: RaisedButton(
                                    textColor: Colors.white,
                                    color: Colors.orange[900],
                                    child: Text(
                                      "SignUp",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Register()),
                                      );
                                    },
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(50.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
  }

  void _loginAccount() async {
    if (_formKey.currentState.validate()) {
      setState(() => loading = true);
      _formKey.currentState.save();
    }
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _password)
          .then((currentUser) => Firestore.instance
                  .collection("users")
                  .document(currentUser.user.uid)
                  .get()
                  .then((DocumentSnapshot result) {
                // UserUpdateInfo userUpdateInfo = new UserUpdateInfo();
                // userUpdateInfo.displayName = name;
                // user.updateProfile(userUpdateInfo).then((onValue) {
                //Navigator.of(context).pushReplacementNamed('');
                Navigator.of(context).pop();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
                // title: result["fname"] + "'s Tasks",
                // uid: currentUser.user.uid)));
              }));

      // if (user == null) {
      //   setState(() {
      //     error = 'Please enter valid email or password';
      //     loading = false;
      //   });
      // }

      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => Home(user: user)));
    } catch (e) {
      // _scaffoldKey.currentState.showSnackBar(SnackBar(
      //   content: Text("Failed to login"),
      // ));

      return (e.message);
    }

    //Navigator.of(context).pushReplacementNamed('');
  }
}
