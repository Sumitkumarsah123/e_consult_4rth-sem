// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:demo3/home/home.dart';
// import 'package:flutter/material.dart';

// import 'package:flutter/widgets.dart';

// class UserManagement {
//   storeNewUser(user, context) {
//     Firestore.instance.collection('users').add({
//       'email': user.email,
//       'uid': user.uid,
//       'fname': user.fullname
//     }).then((value) {
//       Navigator.of(context).pop();
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => Home()));
//     }).catchError((e) {
//       print(e);
//     });
//   }
// }
