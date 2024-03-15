import 'package:flutter/material.dart';
import 'package:todoapp/widgets/searchBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MySearchBar(),
        SizedBox(height: 20,),
        _list(),
      ],
    );
  }

  _list() {
    return Expanded(
      child: ListView(
        children: [
          ListTile(
            title: Text('first item'),
          ),
          ListTile(
            title: Text('first item'),
          ),
        ],
      ),
    );
  }
}

