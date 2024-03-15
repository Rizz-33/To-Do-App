import 'package:flutter/material.dart';
import 'package:todoapp/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 203, 48),
        title: Text("To-Do App", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: HomePage(),
      ),
    ),
  );
}

