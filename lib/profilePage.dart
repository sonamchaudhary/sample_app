import 'package:flutter/material.dart';

import './components/profile_page_card.dart';

class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0.0,
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
                    height: 40.0,
                    color: Colors.white,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/dummy.jpg'),
                    radius: 40.0,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              Container(
               height: 400.0,
                width: 360.0,
                child:ProfilePageCard(),
              )
            ],
          ),
        ));
  }
}
