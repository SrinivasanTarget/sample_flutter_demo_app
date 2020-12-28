import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_flutter_demo_app/profile_widget.dart';

import 'notes_widget.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _index = 0;

  final List<Widget> _children = [NotesWidget(), ProfileWidget()];

  void onTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes App'),
        backgroundColor: Colors.blueGrey,
      ),
      body: _children[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: _index,
        backgroundColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Notes'),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_new_rounded), label: 'Profile'),
        ],
      ),
    );
  }
}
