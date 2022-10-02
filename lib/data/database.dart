import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List todoList = [];
  //reference our box
  final myBox = Hive.box('mybox');
  //run this method if this is the first time ever opening this app
  void createInitialData() {
    todoList = [
      ["Make a flutter Project", false],
      ["make a flutter project", false],
    ];
  }

  // load the data from database
  void loadData() {
    todoList = myBox.get("TODODATABASE");
  }

//update the database
  void updateDataBase() {
    myBox.put("TODODATABASE", todoList);
  }
}
