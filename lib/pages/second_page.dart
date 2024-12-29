import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Text('Second Page'),
      ),
      //button to navigate to first page
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/first');
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}