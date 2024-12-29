

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/first_page.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/settings.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: FirstPage(),
      routes: {
        '/first': (context) => FirstPage(),
        '/home': (context) => Home(),
        '/settings': (context) => Settings(),
      },
    );
  }
}