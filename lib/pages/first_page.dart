import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      
      backgroundColor: Colors.blue,
      body: GridView.builder(
        itemCount: 64,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8), 
        itemBuilder: (context, index){
          bool flip = (index / 8).floor() % 2 != 0;
          return Container(
            height: 50,
            color: flip ? 
              index % 2 == 0 ? Colors.black : Colors.red : 
              index % 2 == 0 ? Colors.red : Colors.black,
          );
        },
      ),
      //button to navivate to second page
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/second');
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}