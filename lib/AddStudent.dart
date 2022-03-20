import 'package:charusat/Contact.dart';
import 'package:charusat/Home(admin).dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Faculty.dart';
import 'Home.dart';
import 'Notice.dart';
import 'StudentZone.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({Key? key}) : super(key: key);

  @override
  _AddStudentState createState() => _AddStudentState();
}
class _AddStudentState extends State<AddStudent>{
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    final NameField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Student Name",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final StIDField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Student ID",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final emailField = TextField(
    obscureText: false,
    style: style,

    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email",
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );
  final passwordField = TextField(
    obscureText: true,
    style: style,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );
    final confirmpasswordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Confirm Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
  final loginButon = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Color(0xff01A0C7),
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeAdmin()));
      },
      child: Text("Login",
          textAlign: TextAlign.center,
          style: style.copyWith(
              color: Colors.white, fontWeight: FontWeight.bold)),
    ),
  );

    return Scaffold(
      appBar: AppBar(
        title: Text('          Add Student'),
        backgroundColor: Color(0xff01A0C7),
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          primary: false,
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height : 80.0),
                  NameField,
                  SizedBox(height: 25.0),
                  StIDField,
                  SizedBox(height: 25.0),
                  emailField,
                  SizedBox(height: 25.0),
                  passwordField,
                  SizedBox(height: 25.0),
                  confirmpasswordField,
                  SizedBox(height: 35.0),
                  loginButon,
                  SizedBox(height: 180.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}