// import 'package:demo3/home/home.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   String _email, _password;
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login Page1'),
//       ),
//       body: Form(
//           key: _formKey,
//           child: Column(
//             children: <Widget>[
//               TextFormField(
//                 validator: (input) => input.isEmpty ? 'enter an email' : null,
//                 onSaved: (input) => _email = input,
//                 decoration: InputDecoration(labelText: 'Email'),
//               ),
//               TextFormField(
//                 validator: (input) => input.isEmpty ? 'enter an email' : null,
//                 onSaved: (input) => _password = input,
//                 decoration: InputDecoration(labelText: 'password'),
//                 obscureText: true,
//               ),
//               RaisedButton(
//                 onPressed: signIn,
//                 child: Text("Login"),
//               )
//             ],
//           )),
//     );
//   }

//   Future<void> signIn() async {
//     //final formstate = _formKey.currentContext;
//     if (_formKey.currentState.validate()) {
//       _formKey.currentState.save();
//       // optional to make object "AuthResult result"
//       // FirebaseUser user = (await FirebaseAuth.instance
//       //         .signInWithEmailAndPassword(email: _email, password: _password))
//       //     .user;

//       AuthResult result = await FirebaseAuth.instance
//           .signInWithEmailAndPassword(email: _email, password: _password);
//       FirebaseUser user = result.user;

//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => Home(user: user)));
//     }
//   }

//   // Future<void> signOut() async {
//   //   return await FirebaseAuth.instance.signOut();
//   // }
// }
