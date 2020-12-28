import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'notes_widget.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _index = 0;

  final List<Widget> _children = [
    Center(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Capture all your notes here...',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'IndieFlower',
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    NotesWidget()
  ];

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
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Notes'),
        ],
      ),
    );
  }
}
