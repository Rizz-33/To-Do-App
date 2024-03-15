import 'package:flutter/material.dart';
import 'package:todoapp/screen/home.dart';

var primaryColor = Color.fromARGB(255, 175, 63, 255);

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: primaryColor,
    ),
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          "To-Do App",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body:
          HomePage(),
        
      ),
    
  ));
}
