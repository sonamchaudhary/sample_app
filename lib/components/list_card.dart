import 'package:flutter/material.dart';

class ListCardComponent extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        height: 440.0,
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Column(
                children: <Widget>[
                  Text('here comes Title'),
                  Text('here will come the sub-title'),
                  Text('1/2/2019'),
                  Text('here comes description'),
                  Image.asset(''),
                ],
              ),
            );
          },
        ));
  }
}
