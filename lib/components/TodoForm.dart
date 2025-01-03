import 'package:flutter/material.dart';
import 'package:flutter_app/components/TodoFormButton.dart';


class Todoform extends StatelessWidget{
  final controller;
  VoidCallback handleSave;
  VoidCallback handleCancel;
  Todoform({
    super.key, 
    required this.controller,
    required this.handleCancel,
    required this.handleSave
    });

  

  


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter task name'
            ),
            
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [ 
              Todoformbutton(onPressed: handleSave, text: 'Save'),
              SizedBox(width: 8,),
              Todoformbutton(text: 'Cancel', onPressed: handleCancel)
          ],
            
          )
        ],),
      ),
    );
  }
}