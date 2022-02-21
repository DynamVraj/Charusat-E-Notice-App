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
    return Scaffold(
      appBar: AppBar(
        title: Text('   Charusat E-Notice App'),
        backgroundColor: Color(0xff01A0C7),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff01A0C7),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Student Zone',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Notices',
          ),
        ],
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
                SizedBox(height: 25),
                GridView.count(
                    primary: false,
                    padding: EdgeInsets.all(50.0),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    children: [
                      Column(
                        children : [
                          IconButton(
                            icon: Image.asset(
                              'images/faculty.jpeg',
                            ),
                            iconSize: 80,
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
                          iconSize: 80,
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
                            iconSize: 80,
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
                            iconSize: 80,
                            onPressed: () {},
                          ),
                          Text('Contact Us')
                        ],
                      ),
                      SizedBox(height: 0.0,)
                    ],
                  ),
                SizedBox(height: 0.0),
                ],
              )
            ),
          ),
        ),
    );
  }

}