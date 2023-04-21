import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_clone/splashscreen1.dart';

void main(){
  runApp(
    MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.white,
        )
      
      ) ,
    )
  );
}