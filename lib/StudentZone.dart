import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentZone extends StatefulWidget {
  const StudentZone({Key? key}) : super(key: key);

  @override
  _StudentZoneState createState() => _StudentZoneState();
}
class _StudentZoneState extends State<StudentZone>{
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('  Charusat E-Notice App'),
          backgroundColor: Color(0xff01A0C7),
        ),
      body: Center(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          primary: false,
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height : 55.0),
                SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    "images/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}