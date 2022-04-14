import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tt extends StatefulWidget {
  const tt({Key? key}) : super(key: key);

  @override
  _ttState createState() => _ttState();
}
class _ttState extends State<tt>{
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
        home: ttPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class ttPage extends StatelessWidget {
  final List<String> images = [
    "images/tt.png"
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