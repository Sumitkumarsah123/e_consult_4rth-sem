//import 'dart:html';

import 'package:demo3/setup/patient/models/user_model.dart';
//import 'package:flutter/cupertino.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'images/0.png',
);

//users
final User a = User(
  id: 1,
  name: 'John',
  imageUrl: 'images/1.png',
);
final User b = User(
  id: 2,
  name: 'Stark',
  imageUrl: 'images/2.png',
);
final User c = User(
  id: 3,
  name: 'Bane',
  imageUrl: 'images/3.jpg',
);
final User d = User(
  id: 4,
  name: 'Tom',
  imageUrl: 'images/4.jpg',
);
final User e = User(
  id: 5,
  name: 'James',
  imageUrl: 'images/5.jpg',
);

//Example chats
List chats = [
  Message(
    sender: a,
    time: '5:30 pm',
    text: 'Hey how are you doing these days ?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: b,
    time: '4 am',
    text: 'Hey, you are such a good guy. Lets roar',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: c,
    time: '1 am',
    text: ' The world needs a hero, Im the hero',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: e,
    time: '2 pm',
    text: 'Hey, you yes you whaha haha',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: d,
    time: '4 am',
    text: 'Hey, you are such a good guy. Lets roar',
    isLiked: false,
    unread: true,
  ),
];

//example messages in chat screen
List messages = [
  Message(
    sender: a,
    time: '5:30 pm',
    text: 'Hey how are you doing these days ?',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: currentUser,
    time: '5:40 pm',
    text: 'Hey, Doing good, you ?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: a,
    time: '5:30 pm',
    text: 'Ohh ok so any plans ?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: currentUser,
    time: '5:30 pm',
    text: 'Yeahh yeah not so much, so what are you doing these days?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: a,
    time: '5:30 pm',
    text: 'Watching umbrella academy and time travel its fun',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: currentUser,
    time: '5:30 pm',
    text: 'Nice',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: currentUser,
    time: '5:30 pm',
    text: '10 x Nice',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: currentUser,
    time: '5:30 pm',
    text: '50 x Nice',
    isLiked: true,
    unread: false,
  ),
];
