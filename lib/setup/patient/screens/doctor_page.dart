import 'package:flutter/material.dart';
import 'package:demo3/setup/patient/models/json_models.dart';
import 'package:demo3/setup/patient/screens/doc_profile.dart';

class DoctorHomepage extends StatefulWidget {
  @override
  _DoctorHomepageState createState() => _DoctorHomepageState();
}

class _DoctorHomepageState extends State<DoctorHomepage> {
  Future<List<Users>> fetchItems(BuildContext context) async {
    final jsonstring = await DefaultAssetBundle.of(context)
        .loadString("json_file_doctor/doc_json.json");
    return usersFromJson(jsonstring);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF473F97),
        title: Text("Doctor List"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: FutureBuilder(
            future: fetchItems(context),
            // future: DefaultAssetBundle.of(context)
            //     .loadString('json_file_doctor/doc_json.json'),
            builder: (context, snapshot) {
              // var mydata = json.decode(snapshot.data.toString());
              // print(mydata);
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  // shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    Users user = snapshot.data[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(user.avatar),
                      ),
                      title: Text(user.name),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) =>
                                    DetailPage(snapshot.data[index])));
                      },
                    );
                  },
                  // itemCount: mydata == null ? 0 : mydata.length,
                );
              }
              return Container(child: Center(child: Text("Loading...")));
            },
          ),
        ),
      ),
    );
  }
}
