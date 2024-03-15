import 'package:flutter/material.dart';
import 'package:todoapp/models/todo.dart';
import 'package:todoapp/widgets/input_todo.dart';
import 'package:todoapp/widgets/searchBar.dart';
import 'package:todoapp/widgets/todoCard.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Todo> todos =[
    Todo(title: 'gym', id: '1', isDone: true),
    Todo(title: 'code', id: '2'),
    Todo(title: 'sleep', id: '3'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MySearchBar(),
            SizedBox(height: 20),
            _list(),
            InputTodo(),
          ],
        ),
      ),
    );
  }

  Widget _list() {
    return Expanded(
      child: ListView(
        children: [
          for(Todo todo in todos)
          TodoCard(
            title: todo.title,
            isDone: todo.isDone,
            todoClick: (){
              setState(() {
                todo.toggleDone();
              });
            },
          ),
        ],
      ),
    );
  }
}
