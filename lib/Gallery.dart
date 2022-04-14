import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('                 Gallery'),
        backgroundColor: Color(0xff01A0C7),
      ),
    body: MaterialApp(
        title: 'Gallery',
        theme: ThemeData(primarySwatch: Colors.lightGreen),
        home: DisplayPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class DisplayPage extends StatelessWidget {
  final List<String> images = [
    "images/1.jpg",
    "images/2.jpeg",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
    "images/6.jpg",
    "images/7.jpg",
    "images/8.jpg",
    "images/9.jpg",
    "images/10.jpg",
    "images/11.jpg",
    "images/12.jpg",
    "images/13.jpg",
    "images/14.jpg",
    "images/15.jpg",
    "images/16.jpg",
    "images/17.jpg",
    "images/18.jpg",
    "images/19.jpg",
    "images/20.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox.fromSize(
            size: Size.fromHeight(550.0),
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.8),
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return new Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 8.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(8.0),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          images[index],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )),
    );
  }
}