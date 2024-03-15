import 'package:flutter/material.dart';
import 'package:todoapp/main.dart';

class TodoCard extends StatefulWidget {
  final String title;
  final bool isDone;
  final Function todoClick;
  final Function deleteTodo;

  const TodoCard({super.key, required  this.title, required this.isDone, required this.todoClick, required this.deleteTodo});

  @override
  State<TodoCard> createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 227, 189, 236),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        onTap: () => widget.todoClick(),
        title: widget.isDone
          ? Text(widget.title, style: TextStyle(color: const Color.fromARGB(255, 114, 114, 114),),)
          :Text(widget.title,),
        leading: widget.isDone
          ? Icon(Icons.check_box, color: primaryColor,)
          : Icon(Icons.check_box_outline_blank, color: primaryColor,),
        trailing: IconButton(
          onPressed: () => widget.deleteTodo(),
          icon: Icon(Icons.delete, color: primaryColor,),
        ),
      ),
    );
  }
}
