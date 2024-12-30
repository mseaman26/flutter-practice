

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/todo_page.dart';
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
      home: TodoPage(),

    );
  }
}