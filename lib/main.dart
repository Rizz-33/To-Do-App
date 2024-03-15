import 'package:flutter/material.dart';
import 'package:todoapp/home.dart';

var primaryColor = Color.fromARGB(255, 255, 203, 48);

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color.fromARGB(255, 255, 203, 48),
    ),
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          "To-Do App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          HomePage(),
        ],
      ),
    ),
  ));
}
