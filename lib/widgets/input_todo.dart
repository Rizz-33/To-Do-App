import 'package:flutter/material.dart';
import 'package:todoapp/main.dart';

class InputTodo extends StatefulWidget {
  final TextEditingController inputController;
  final Function addTodo;

  const InputTodo({super.key, required this.inputController, required this.addTodo});

  @override
  State<InputTodo> createState() => _InputTodoState();
}

class _InputTodoState extends State<InputTodo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      
      child: TextField(
        controller: widget.inputController,
        cursorColor: primaryColor,
        decoration: InputDecoration(
          hintText: 'Add New To-Do',
          suffixIcon: IconButton( icon: Icon(Icons.add), onPressed: ()=> widget.addTodo,),
          contentPadding: EdgeInsets.symmetric(horizontal: 15),
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