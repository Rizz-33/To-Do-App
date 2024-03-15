import 'package:flutter/material.dart';

class TodoCard extends StatefulWidget {
  const TodoCard({super.key});

  @override
  State<TodoCard> createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 170, 123, 179),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        title: Text('Task'),
        leading: Icon(Icons.check_box),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}
