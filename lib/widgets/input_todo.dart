import 'package:flutter/material.dart';
import 'package:todoapp/main.dart';

class InputTodo extends StatefulWidget {
  const InputTodo({super.key});

  @override
  State<InputTodo> createState() => _InputTodoState();
}

class _InputTodoState extends State<InputTodo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: TextField(
        cursorColor: primaryColor,
        decoration: InputDecoration(
          hintText: 'Add New To-Do',
          suffixIcon: Icon(Icons.add),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: primaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}