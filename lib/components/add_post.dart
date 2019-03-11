import 'package:flutter/material.dart';

class AddPostComponent extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 2.0, color: Colors.white)),
      width: 400.0,
      height: 50.0,
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          ),
          GestureDetector(
            child: Text(
              'Write post here',
              style: TextStyle(fontSize: 18.0, color: Colors.grey[700]),
            ),
            onTap: () {},
          ),
          Spacer(),
          GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Icon(Icons.camera_alt),
              ))
        ],
      ),
    );
  }
}
