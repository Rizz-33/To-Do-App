import 'package:flutter/material.dart';
import 'package:todoapp/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 211, 80),
        title: Text("To-Do App"),
        centerTitle: true,
      ),
      body: HomePage(),
      ),
    ),
  );
}

