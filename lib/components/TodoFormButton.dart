import 'package:flutter/material.dart';

class Todoformbutton extends StatelessWidget{
  final String text;
  final VoidCallback onPressed;
  const Todoformbutton({super.key, required this.text, required this.onPressed });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed, 
      color: Colors.yellow[300],
      child: Text(
        text
        ),
      
    );
  }
}