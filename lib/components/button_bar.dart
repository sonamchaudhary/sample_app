import 'package:flutter/material.dart';

class ButtonBarComponent extends StatelessWidget {
  Widget build(BuildContext context) {
    return ButtonBar(
      children: <Widget>[
        FlatButton(
          child: Row(
            children: <Widget>[
              Icon(Icons.thumb_up ,size: 26.0),SizedBox(width: 3.0,),
              Text('Like', style: TextStyle(fontSize: 16.0))
            ],
          ),
          onPressed: () {},
        ),
        FlatButton(
          child: Row(
            children: <Widget>[
              Icon(Icons.comment, size: 26.0,),SizedBox(width: 3.0,),
              Text('Comment', style: TextStyle(fontSize: 16.0))
            ],
          ),
          onPressed: () {},
        ),
        FlatButton(
          child: Row(
            children: <Widget>[
              Icon(Icons.reply_all, size: 26.0),SizedBox(width: 4.0,),
              Text('share', style: TextStyle(fontSize: 16.0))
            ],
          ),
          onPressed: () {},
        )
      ],
      mainAxisSize: MainAxisSize.max,
    );
  }
}
