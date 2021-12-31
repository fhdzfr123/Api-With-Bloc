import 'dart:async';
import 'package:demo/Screens/login.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    Timer(const Duration(seconds: 3),
    (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
    }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width*0.8,
          height: MediaQuery.of(context).size.height*0.4,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logo.jpeg'),
              fit: BoxFit.contain
            )
          ),
        ),
      ),
    );
  }
}