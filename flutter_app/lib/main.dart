import 'package:flutter/material.dart';
import 'package:flutter_app/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroPage(),
      debugShowCheckedModeBanner: false,
      //make it so all backgrounds default to Colors.grey[300]
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[300],
         //make it so all drawer backgrounds default to Colors.grey[300]
        canvasColor: Colors.grey[300],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[300],

          ),



      ),
     
      


    );
  }
}