import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotesWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Notes();
  }
}

class _Notes extends State<NotesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.add,
              color: Colors.blueGrey,
            ),
            Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  'Add new note',
                  style: TextStyle(
                      fontFamily: 'IndieFlower',
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))
          ],
        ),
      ),
    ));
  }
}
