import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
)
);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes App'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.all(2.0),
        color: Colors.blueGrey[100],
        child: Text(
          'Capture all your notes here',
          style: TextStyle(
              color: Colors.black87,
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'IndieFlower'
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_comment),
              label: 'Add Comments'
          ),
        ],
      ),
    );
  }
}

