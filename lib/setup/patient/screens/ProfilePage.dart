import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main() => runApp(ProfilePage());

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Profile';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF473F97),
          title: Text(title),
        ),
        drawer: Drawer(),
        body: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.deepPurple, Colors.blueGrey])),
              child: Container(
                width: double.infinity,
                height: 250.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('images/new.jpg'),
                        radius: 70.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Prabesh Pokhrel",
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone: 984696969'),
            ),
            ListTile(
              leading: Icon(Icons.sentiment_neutral),
              title: Text('Age: 20'),
            ),
            ListTile(
              leading: Icon(Icons.place),
              title: Text('Address: Kapilvastu'),
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text('Blood group: AB+'),
            ),
            ListTile(
              leading: Icon(Icons.wc),
              title: Text('Sex: male'),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Type: User'),
            ),
          ],
        ),
      ),
    );
  }
}
