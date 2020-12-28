import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/Srinivas_pic.jpg'),
              radius: 40.0,
            ),
          ),
          Divider(
            height: 50,
            color: Colors.blueGrey[200],
          ),
          Text(
            'NAME',
            style: TextStyle(
                fontFamily: 'IndieFlower',
                color: Colors.blueGrey,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          SizedBox(height: 5),
          Text(
            'Srinivasan Sekar',
            style: TextStyle(
                fontFamily: 'IndieFlower',
                color: Colors.grey,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          SizedBox(height: 10),
          Text(
            'Github ID',
            style: TextStyle(
                fontFamily: 'IndieFlower',
                color: Colors.blueGrey,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          SizedBox(height: 5),
          Text(
            'SrinivasanTarget',
            style: TextStyle(
                fontFamily: 'IndieFlower',
                color: Colors.grey,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(
                Icons.email,
                color: Colors.blueGrey,
              ),
              SizedBox(height: 10),
              Text(
                'srinivasan.sekar1990@gmail.com',
                style: TextStyle(
                    fontFamily: 'IndieFlower',
                    color: Colors.grey,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )
            ],
          )
        ],
      ),
    );
  }
}
