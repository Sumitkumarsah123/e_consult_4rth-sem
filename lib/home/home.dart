//import 'package:demo3/setup/login.dart';
//import 'package:demo3/setup/patient/patient_login.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

//import 'package:demo3/setup/doctor/doctor_register.dart';
//import 'package:demo3/setup/login.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title, this.uid}) : super(key: key);
  final String title;
  final String uid;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FirebaseUser currentUser;
  @override
  initState() {
    //taskTitleInputController = new TextEditingController();
    //taskDescripInputController = new TextEditingController();
    this.getCurrentUser();
    super.initState();
  }

  void getCurrentUser() async {
    currentUser = await FirebaseAuth.instance.currentUser();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('hello'),
        ),
        body: StreamBuilder(
            stream: Firestore.instance
                .collection("users")
                .document(widget.uid)

                // .collection('tasks')
                .snapshots(),
            // future: FirebaseAuth.instance.currentUser(),
            builder: (BuildContext context, snapshot) {
              print(snapshot.data);
              if (snapshot.hasError)
                // return CircularProgressIndicator();
                return new Text('Error: ${snapshot.error}');
              else {
                // return Text(snapshot.data.documents[0]['uid']);

                return ListView.builder(
                    itemCount: snapshot.data.documents.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Text(
                          '${snapshot.data.documents[index]['title']}',
                        ),
                      );
                    });
                //   children: snapshot.data.documents
                //       .map((DocumentSnapshot documents) {
                // return Center(
                //   child: Container(
                //     child: Text(documents['title']),
                //   ),
                // );

              }
            }));
  }
}

// builder: (context, snapshot) {
//   if (snapshot.connectionState == ConnectionState.done) {
//     return Text("${snapshot.data.email}");
//   } else {
//     return CircularProgressIndicator();
//   }

// body: Column(
//   children: <Widget>[
//     FutureBuilder<FirebaseUser>(
//       future: Firestore.instance.currentUser(),

//       //future: Provider.of(context).auth.getCurrentUser(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           return Text("${snapshot.data.}");
//         } else {
//           return CircularProgressIndicator();
//         }
//       },
//     )
//   ],
// ),

//           padding: const EdgeInsets.all(20.0),
//           child: StreamBuilder<QuerySnapshot>(
//             stream: Firestore.instance
//                 .collection("users")
//                 .document(widget.uid)
//                 .collection('tasks')
//                 .snapshots(),
//             builder:
//                 (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//               if (snapshot.hasError)
//                 return new Text('Error: ${snapshot.error}');
//               switch (snapshot.connectionState) {
//                 case ConnectionState.waiting:
//                   return new Text('Loading...');
//                 default:
//                   return new ListView(
//                     children: snapshot.data.documents
//                         .map((DocumentSnapshot document) {
//                       print(document['email']);
//                       return Container(
//                         // child: document['name'],
//                         child: Text(document[widget.uid]),

//                         //description: document['description'],
//                       );
//                     }).toList(),
//                   );
//               }
//             },
//           )),
//     );
//   }
// }

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//         actions: <Widget>[
//           FlatButton.icon(
//               onPressed: () async {
//                 await FirebaseAuth.instance.signOut();
//                 Navigator.pushReplacement(context,
//                     MaterialPageRoute(builder: (context) => LoginPage()));
//               },
//               icon: Icon(Icons.people),
//               label: Text("Sign Out"))
//         ],
//       ),
//     );
//   }
// }

// class Home extends StatelessWidget {
//  // const Home({Key key, this.uid}) : super(key: key);
//   //final FirebaseUser user;
//   String uid;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//         actions: <Widget>[
//           FlatButton.icon(
//               onPressed: () async {
//                 await FirebaseAuth.instance.signOut();
//                 Navigator.pushReplacement(context,
//                     MaterialPageRoute(builder: (context) => LoginPage()));
//               },
//               icon: Icon(Icons.people),
//               label: Text("Sign Out"))
//         ],
//       ),
//     );
//   }
// }
// class Home extends StatefulWidget {
//   Home({Key key, this.title, this.uid}) : super(key: key);
//   //update the constructor to include the uid
//   final String title;
//   final String uid; //include this
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: (AppBar(
//         title: Text("data"),
//       )),
//       body:
//     );
//   }
// }
