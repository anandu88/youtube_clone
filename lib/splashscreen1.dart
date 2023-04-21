import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:youtube_clone/Homepage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage(),));
  });
  }
  

  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      body: Center(
        child: Container(decoration: BoxDecoration(),
        height: MediaQuery.of(context).size.height*.38,
        width: MediaQuery.of(context).size.width*.38,
          child: Image.asset('assets/images/Dtafalonso-Android-L-Youtube.512.png')),
      )
        
      
    );
  }
}