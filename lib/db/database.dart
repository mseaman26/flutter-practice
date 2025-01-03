import 'package:hive_flutter/hive_flutter.dart';

class todoDatabase {
  List todoList = [];

  final _myBox = Hive.box('todoBox');

  void createInitialData(){
    todoList = [
      ["Make tutorial", false],
      ["do excercise", false]
    ];
  }

  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  void updataDatabase(){
    _myBox.put('TODOLIST', todoList);
  }
}