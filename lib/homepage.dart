import 'package:flutter/material.dart';

import './components/card_component.dart';
import './components/add_post.dart';
import './components/list_card.dart';

class MyHomePage extends StatefulWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);

  // final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.ac_unit),
          onPressed: () {},
        ),
        actions: <Widget>[
          Container(
            width: 280.0,
            color: Colors.white,
            margin: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.grey,
                  onPressed: () {},
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Search'),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.account_box),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        color: Colors.grey[350],
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Get started in 3 steps.',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            CardComponent(),
            AddPostComponent(),
            ListCardComponent(),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed:(){},
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}