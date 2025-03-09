import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase{
  List TodoList=[];

final myBox=Hive.box('mybox');

void createData(){
  TodoList=[
   ["TODO",false],
  
  ];
}

void loadData(){
  TodoList=myBox.get("TODOLIST");
}


void updateDataBase(){
  myBox.put("TODOLIST", TodoList);
}
}