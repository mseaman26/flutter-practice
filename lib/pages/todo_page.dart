import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget{
  const TodoPage({super.key});
  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage>{

  TextEditingController myController = TextEditingController();

  String greetingName = '';

  void greetUser(){
    setState(() {
      greetingName = myController.text;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingName.isNotEmpty ? 'Hello $greetingName' : '', style: TextStyle(fontSize: 30, color: Colors.blue),),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  border: OutlineInputBorder()
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: greetUser,
                child: Text('Submit', style: TextStyle(fontSize: 20, color: Colors.white),),
              )
            ],
          ),
        ),
      ),
    );
  }
}