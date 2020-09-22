import 'package:flutter/material.dart';
import 'package:demo3/setup/patient/models/json_models.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPage extends StatefulWidget {
  final Users user;

  DetailPage(this.user);

  @override
  _DetailPageState createState() => _DetailPageState();
}

void _makePhoneCall(int number) async {
  var url = "tel:${number.toString()}";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

//For viber
void _launchViber(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blueAccent, Colors.greenAccent])),
              child: Container(
                width: double.infinity,
                //height: 300.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          widget.user.avatar,
                        ),
                        radius: 50.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        widget.user.name,
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                        ),
                      ),
                      // SizedBox(
                      //   height: 10.0,
                      // ),
                      Text(
                        widget.user.specialization,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Card(
                        // margin: EdgeInsets.symmetric(
                        //     horizontal: 20.0, vertical: 5.0),
                        clipBehavior: Clip.antiAlias,
                        color: Color(0xFF473F97),
                        elevation: 5.0,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 22.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                FlatButton.icon(
                                  onPressed: () {
                                    _makePhoneCall(9779818190311);
                                  },
                                  color: Colors.red,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
                                  icon: const Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                  ),
                                  label: Text('Call Me',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ),
                                FlatButton.icon(
                                  onPressed: () {
                                    _launchViber(
                                        'https://invite.viber.com/?g2=AQAmvXtYaOXJSktBo5ZGUatVwyaa1K7KXkDWLWdMyKJfMs8GbSnY5IplkYNTC3iu&lang=en');
                                  },
                                  color: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
                                  icon: FaIcon(
                                    FontAwesomeIcons.viber,
                                    color: Colors.white,
                                    // size: size.longestSide * 0.02,
                                  ),
                                  label: Text(
                                    'Viber',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              )),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  // leading: Icon(Icons.phone),
                  title: Row(
                    children: <Widget>[
                      Text(
                        'Experience:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        widget.user.experience,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Text(
                        'Present City:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        widget.user.presentCity,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Text(
                        'Hospital:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        widget.user.hospital,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Text(
                        'E-mail:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        widget.user.email,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Text(
                        'Contact:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        widget.user.contact,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          // Container(
          //   width: 350.00,
          //   child: RaisedButton(
          //       onPressed: () {},
          //       shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(80.0)),
          //       elevation: 0.0,
          //       padding: EdgeInsets.all(0.0),
          //       child: Ink(
          //         decoration: BoxDecoration(
          //           gradient: LinearGradient(
          //               begin: Alignment.centerRight,
          //               end: Alignment.centerLeft,
          //               colors: [Colors.redAccent, Colors.pinkAccent]),
          //           borderRadius: BorderRadius.circular(30.0),
          //         ),
          //         child: Container(
          //           constraints:
          //               BoxConstraints(maxWidth: 350.0, minHeight: 50.0),
          //           alignment: Alignment.center,
          //           child: Text(
          //             "Request An Appointment",
          //             style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 26.0,
          //                 fontWeight: FontWeight.w300),
          //           ),
          //         ),
          //       )),
          // ),
        ],
      ),
    );
  }
}
