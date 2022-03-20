import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}
class _AboutState extends State<About>{
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('             About Us'),
        backgroundColor: Color(0xff01A0C7),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Hello USERS ;\n\nWe hope that our application is very usefull to you and we are grateful that you are using our application.\n\nAt First let us introduce ourselves ;\n\nThis application is made by 20CS059 VRAJ PATEL and 20CS072 NITANT SADADIWALA.\n\nWe implemented this application by using Flutter(For FrontEnd) and Firebase(As a BackEnd).\n\nWe learnt flutter from "Udemy Course" and learnt firebasse from "firebase youtube channel".\n\nYou can contact us from phone no which is given in Contact Us.\n\nIt really makes us happy to see you as our user.\n\nThanks For Visiting..'
        ),
      )
    );
  }
}