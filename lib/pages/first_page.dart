import 'package:flutter/material.dart';


class FirstPage extends StatefulWidget{

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _incrementValue = 0;



  void _handleIncrement(){
    setState(() {
      _incrementValue++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),

      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          //add padding to body
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('First Page', style: TextStyle(fontSize: 30, color: Colors.white),),
              Text('you have pressed the button this many times:', style: TextStyle(fontSize: 20, color: Colors.white),),
              Text('$_incrementValue', style: TextStyle(fontSize: 20, color: Colors.white),),
              ElevatedButton(onPressed: _handleIncrement, child: 
                Text('increment', style: TextStyle(fontSize: 20, color: Colors.white),),
              ),
            ],
          ),
        ),
      ),

      );
  }
}