

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/HomePage.dart';
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
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
          
        listTileTheme: const ListTileThemeData(
          iconColor: Colors.white,
    ),

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.yellow,
        ),
      ),
    );
  }
}