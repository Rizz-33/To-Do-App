import 'package:flutter/material.dart';
import 'package:todoapp/main.dart';

class TodoCard extends StatefulWidget {
  final String title;
  final bool isDone;
  final Function todoClick;

  const TodoCard({super.key, required  this.title, required this.isDone, required this.todoClick});

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
        title: Text(widget.title, style: TextStyle(color: Colors.black,),),
        leading: widget.isDone
          ? Icon(Icons.check_box, color: primaryColor,)
          : Icon(Icons.check_box_outline_blank, color: primaryColor,),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.delete, color: primaryColor,),
        ),
      ),
    );
  }
}
