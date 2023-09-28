import 'package:bti_assignment/Exercises/App%20To%20Do/data/todo_data.dart';
import 'package:bti_assignment/Exercises/App%20To%20Do/data/todo_model.dart';
import 'package:bti_assignment/Exercises/App%20To%20Do/view/uncomplete_widget.dart';
import 'package:flutter/material.dart';

import 'all_complete_widget.dart';
import 'complete_widget.dart';


class ScreenPages extends StatefulWidget {

  @override
  State<ScreenPages> createState() => _ScreenPagesState();
}

class _ScreenPagesState extends State<ScreenPages> {
  List<ToDoModel>? toDoModel = todoList;

  updateScreen(){
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.list),),
            Tab(icon: Icon(Icons.done),),
            Tab(icon: Icon(Icons.close),),
          ]),
        ),
        body: TabBarView(children: [
          AllCompletedWidget(),
          CompletedWidget(),
          UnCompletedWidget(),
        ]),
      ),
    );
  }
}
