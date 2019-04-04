import 'package:flutter/material.dart';

import './components/add_post.dart';
import './components/list_card.dart';
import './components/drawer.dart';
import './components/bottom_bar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            _scaffoldKey.currentState.openDrawer();
          },
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/dummy.jpg'),
              )),
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
      drawer: DrawerComponent(),
      body: Container(
        height: 1500,
          color: Colors.grey[350],
          child: ListView(
            shrinkWrap: true,
            // padding: const EdgeInsets.all(20.0),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Get started in 3 steps.',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
              // CardComponent(),
              Container(
                height: 10.0,
              ),
              AddPostComponent(),
              ListCardComponent(),
            ],
          )),
      bottomNavigationBar: BottomBarComponent()
    );
  }
}
