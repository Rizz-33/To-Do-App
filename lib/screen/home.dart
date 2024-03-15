import 'package:flutter/material.dart';
import 'package:todoapp/widgets/input_todo.dart';
import 'package:todoapp/widgets/searchBar.dart';
import 'package:todoapp/widgets/todoCard.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          TodoCard(),
          TodoCard(),
          TodoCard(),
        ],
      ),
    );
  }
}
