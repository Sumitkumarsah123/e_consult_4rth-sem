// //import 'package:demo3/home/home.dart';
// import 'package:demo3/setup/login.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class Register extends StatefulWidget {
//   @override
//   _RegisterState createState() => _RegisterState();
// }

// class _RegisterState extends State<Register> {
//   String _email, _password;
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Register Page'),
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
//                 onPressed: register,
//                 child: Text("Register"),
//               )
//             ],
//           )),
//     );
//   }

//   Future<void> register() async {
//     //final formstate = _formKey.currentContext;
//     if (_formKey.currentState.validate()) {
//       _formKey.currentState.save();
//       await FirebaseAuth.instance
//           .createUserWithEmailAndPassword(email: _email, password: _password);
//       //FirebaseUser user = result.user;
//       Navigator.of(context).pop();

//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => LoginPage()));
//     }
//   }
// }
