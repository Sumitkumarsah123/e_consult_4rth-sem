// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';

List<Users> usersFromJson(String str) =>
    List<Users>.from(json.decode(str).map((x) => Users.fromJson(x)));

String usersToJson(List<Users> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Users {
  Users({
    this.id,
    this.email,
    this.name,
    this.avatar,
    this.specialization,
    this.experience,
    this.presentCity,
    this.hospital,
    this.contact,
  });

  int id;
  String email;
  String name;
  String avatar;
  String specialization;
  String experience;
  String presentCity;
  String hospital;
  String contact;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
      id: json["id"],
      email: json["email"],
      name: json["name"],
      avatar: json["avatar"],
      specialization: json["specialization"],
      experience: json["experience"],
      presentCity: json["present_city"],
      hospital: json["hospital"],
      contact: json['contact']);

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "name": name,
        "avatar": avatar,
        "specialization": specialization,
        "experience": experience,
        "present_city": presentCity,
        "hospital": hospital,
        'contact': contact,
      };
}
