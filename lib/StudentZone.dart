import 'package:charusat/tt.dart';
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
    final ttButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => tt()));
        },
        child: Text("Time Table",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
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
                SizedBox(height: 280.0),
                ttButon,
                SizedBox(height: 380.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}