import 'package:flutter/material.dart';
import 'package:flutter_app/components/TodoListTile.dart';
import 'package:flutter_app/components/TodoForm.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_app/db/database.dart';


class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  todoDatabase db = todoDatabase();
  late Box _myBox;

  @override
  void initState() {
    // if this is the first time the app has been opened
    super.initState();
    _myBox = Hive.box('todoBox');
    if(_myBox.get('TODOLIST') == null){
      db.createInitialData();
    }else{
      db.loadData();
    } 
   
  }
  

  final _controller = TextEditingController();

  void checkBoxChanged(bool? value, int index){
    setState(() {
      db.todoList[index][1] = !db.todoList[index][1];
    });
    db.updataDatabase();
  }

  void handleSave(){
    setState(() {
      db.todoList.add([_controller.text, false]);
      _controller.clear();
      Navigator.of(context).pop();
    });
    db.updataDatabase();
  }

  void createNewTask(){
    showDialog(context: context, builder: (context) {
      return Todoform(
        controller: _controller, 
        handleCancel: () => Navigator.of(context).pop(),
        handleSave: handleSave,
        );
    });
  }

  void deleteTask(int index){
    setState(() {
      db.todoList.removeAt(index);
    });
    db.updataDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo App')),
      backgroundColor: Colors.yellow[200],
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: db.todoList.length,
        itemBuilder:(context, index)  {
          return TodoListTile(
            taskName: db.todoList[index][0], 
            taskCompleted: db.todoList[index][1], 
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
            );
            
            
          },
      )
    );
  }
}