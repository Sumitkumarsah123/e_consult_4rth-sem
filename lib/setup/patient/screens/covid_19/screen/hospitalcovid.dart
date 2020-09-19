import 'package:demo3/setup/patient/screens/covid_19/config/color.dart';
import 'package:demo3/setup/patient/screens/covid_19/screen/Covidhospital.dart';
//import 'package:econsult_new_project/screens/covid_19/widget/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CovidHospitaln extends StatefulWidget {
  @override
  _CovidHospitalnState createState() => _CovidHospitalnState();
}

class _CovidHospitalnState extends State<CovidHospitaln> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Corona Update"),
        centerTitle: true,
      ),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHospital(screenHeight),
          _buildNews(screenHeight),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHospital(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.all(10.0),
        height: screenHeight * 0.14,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFAD9FE4), Palette.primaryColor],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: RaisedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset('images/hospital.png'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Covid-19 Hospital',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  // Text(
                  //   'Get The information about covid-19 Hospital',
                  //   style: const TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 16.0,
                  //   ),
                  //   maxLines: 2,
                  // ),
                ],
              )
            ],
          ),
          color: Colors.transparent,
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => HospitalsNep()));
          },
        ),
      ),
    );
  }
}

SliverToBoxAdapter _buildNews(double screenHeight) {
  return SliverToBoxAdapter(
    child: Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      padding: const EdgeInsets.all(10.0),
      height: screenHeight * 0.14,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFAD9FE4), Palette.primaryColor],
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: RaisedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset('images/own_test.png'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Covid-19 News',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                // Text(
                //   'Get the daily updates about Covid-19',
                //   style: const TextStyle(
                //     color: Colors.white,
                //     fontSize: 16.0,
                //   ),
                //   maxLines: 2,
                // ),
              ],
            )
          ],
        ),
        color: Colors.transparent,
        onPressed: () {
          // Navigator.push(context,
          //     new MaterialPageRoute(builder: (context) => FormScreen()));
        },
      ),
    ),
  );
}
