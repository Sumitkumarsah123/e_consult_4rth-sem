//import 'package:cloud_firestore/cloud_firestore.dart';

class OurUser {
  final String id;
  final String fullname;
  final String email;

  OurUser({this.id, this.fullname, this.email});

  OurUser.fromData(Map<String, dynamic> data)
      : id = data['id'],
        fullname = data['fullname'],
        email = data['email'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fullname': fullname,
      'email': email,
    };
  }
}
