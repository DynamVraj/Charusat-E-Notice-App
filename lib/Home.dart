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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 200.0,
                child: Image.asset(
                  "images/logo.png",
                  fit: BoxFit.contain,
                  ),
                ),
              SizedBox(height: 0.0),
              SizedBox(height: 25.0),
              SizedBox(height: 5.0),
              SizedBox(height: 45.0),
              SizedBox(height: 15.0),
              SizedBox(height: 35.0),
              IconButton(
                icon: Image.asset(
                    'images/faculty.png',
                    fit: BoxFit.contain,
                ),
                iconSize: 100,
                onPressed: () {},
                )

              ],
            )
          ),
        ),
      ),
    );
  }

}