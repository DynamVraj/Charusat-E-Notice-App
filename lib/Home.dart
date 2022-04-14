import 'package:charusat/Contact.dart';
import 'package:charusat/Faculty.dart';
import 'package:charusat/Notice.dart';
import 'package:charusat/StudentZone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'About.dart';
import 'Gallery.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home>{
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
          child:
          Container(
          color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height : 45.0),
                SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    "images/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 15),
                GridView.count(
                    primary: false,
                    padding: EdgeInsets.all(50),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    children: [
                      Column(
                        children : [
                          IconButton(
                            icon: Image.asset(
                              'images/StudentZone.png',
                            ),
                            iconSize: 80,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>StudentZone()));
                            },
                          ),
                          Text('Student Zone')
                        ],
                      ),
                      Column(
                        children : [
                          IconButton(
                            icon: Image.asset(
                              'images/chat.png',
                            ),
                            iconSize: 80,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Notice()));
                            },
                          ),
                          Text('Notices')
                        ],
                      ),
                      Column(
                        children : [
                          IconButton(
                            icon: Image.asset(
                              'images/faculty.jpeg',
                            ),
                            iconSize: 80,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Faculty()));
                            },
                          ),
                          Text('Faculty Info')
                        ],
                      ),
                      Column(
                        children : [
                          IconButton(
                          icon: Image.asset(
                            'images/Gallery.png',
                          ),
                          iconSize: 80,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gallery()));

                          },
                          ),
                          Text('Gallery')
                        ],
                      ),
                      Column(
                        children : [
                          IconButton(
                            icon: Image.asset(
                              'images/AboutUs.png',
                            ),
                            iconSize: 80,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>About()));
                            },
                          ),
                          Text('About Us')
                        ],
                      ),
                      Column(
                        children : [
                          IconButton(
                            icon: Image.asset(
                              'images/Contact.png',
                            ),
                            iconSize: 80,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Contact()));
                            },
                          ),
                          Text('Contact Us')
                        ],
                      ),
                      SizedBox(height: 0.0,)
                    ],
                  ),
                SizedBox(height: 0.0),
                ],
              ),
            ),
          ),
        ),
    );
  }
}