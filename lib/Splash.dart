import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(
        builder: (context)=> Login()
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Image(
              image: AssetImage("images/Charusat.png"),
              fit: BoxFit.contain
          ),
        ),
      ),
    );
  }
}
