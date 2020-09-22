// import 'package:flutter/material.dart';

// class FormScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return FormScreenState();
//   }
// }

// class FormScreenState extends State<FormScreen> {
//   String _temperature;
//   String _cough;
//   String _diabetes;
//   String _calories;

//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   Widget _buildTemperature() {
//     return TextFormField(
//       decoration: InputDecoration(labelText: 'Temperature'),
//       maxLength: 10,
//       validator: (String value) {
//         if (value.isEmpty) {
//           return 'Temperature is Required';
//         }

//         return null;
//       },
//       onSaved: (String value) {
//         _temperature = value;
//       },
//     );
//   }

//   Widget _builCough() {
//     return TextFormField(
//       decoration: InputDecoration(labelText: 'Cough(yes/no)'),
//       validator: (String value) {
//         if (value.isEmpty) {
//           return 'This feild is Required';
//         }

//         return null;
//       },
//       onSaved: (String value) {
//         _cough = value;
//       },
//     );
//   }

//   Widget _buildDiabetes() {
//     return TextFormField(
//       decoration: InputDecoration(labelText: 'Diabetes(yes/no)'),
//       keyboardType: TextInputType.phone,
//       validator: (String value) {
//         if (value.isEmpty) {
//           return 'This feild is Required';
//         }

//         return null;
//       },
//       onSaved: (String value) {
//         _diabetes = value;
//       },
//     );
//   }

//   Widget _buildCalories() {
//     return TextFormField(
//       decoration: InputDecoration(labelText: 'Calories'),
//       keyboardType: TextInputType.number,
//       validator: (String value) {
//         int calories = int.tryParse(value);

//         if (calories == null || calories <= 0) {
//           return 'Calories must be greater than 0';
//         }

//         return null;
//       },
//       onSaved: (String value) {
//         _calories = value;
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Form")),
//       body: Container(
//         margin: EdgeInsets.all(24),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               _buildTemperature(),
//               _builCough(),
//               _buildDiabetes(),
//               _buildCalories(),
//               SizedBox(height: 100),
//               RaisedButton(
//                 child: Text(
//                   'Submit',
//                   style: TextStyle(color: Colors.blue, fontSize: 16),
//                 ),
//                 onPressed: () {
//                   if (!_formKey.currentState.validate()) {
//                     return;
//                   }

//                   _formKey.currentState.save();

//                   print(_temperature);
//                   print(_diabetes);
//                   print(_cough);
//                   print(_calories);

//                   //Send to API
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
