

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/HomePage.dart';
import 'package:hive_flutter/hive_flutter.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('todoBox');
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