import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home>{
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final facultyField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    return Scaffold(
        body: Center(
        child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height :135.0),
              SizedBox(
                height: 155.0,
                child: Image.asset(
                  "images/logo.png",
                  fit: BoxFit.contain,
                ),
              ),
              GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  children: [
                    Column(
                      children : [
                        IconButton(
                          icon: Image.asset(
                            'images/faculty.jpeg',
                          ),
                          iconSize: 100,
                          onPressed: () {},
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
                        iconSize: 100,
                        onPressed: () {},
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
                          iconSize: 100,
                          onPressed: () {},
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
                          iconSize: 100,
                          onPressed: () {},
                        ),
                        Text('Contact Us')
                      ],
                    ),
                  ],

                ),
              ],
            )
          ),
        ),
      ),
    );
  }

}