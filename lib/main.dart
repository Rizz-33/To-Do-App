import 'package:flutter/material.dart';
import 'package:todoapp/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("To-Do App"),
        centerTitle: true,
      ),
      body: HomePage(),
      ),
    ),
  );
}

