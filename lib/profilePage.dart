import 'package:flutter/material.dart';

import './components/profile_page_card.dart';
import './components/bottom_bar.dart';
// import 'package:badges/badges.dart';

class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
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
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Container(
                  height: 180.0,
                  color: Colors.blueGrey,
                ),
                 Container(
                  padding: EdgeInsets.only(right: 20.0),
                  height: 60.0,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Icon(
                        Icons.edit,
                        size: 30.0,
                        color: Colors.blueGrey,
                      )
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/dummy.jpg'),
                  radius: 80.0,
                ),
                 Container(
                   alignment:Alignment(0.2,2.3) ,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                  // backgroundImage: AssetImage('assets/dummy.jpg'),
                  radius: 8.0,
                ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
            ),
            Container(
              height: 400.0,
              width: 360.0,
              child: ProfilePageCard(),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomBarComponent(),
    );
  }
}
