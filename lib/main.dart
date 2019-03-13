import 'package:flutter/material.dart';

import './homepage.dart';
import './profilePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       routes: <String, WidgetBuilder> {
      '/profile': (BuildContext context) => MyProfilePage(),
      '/homepage': (BuildContext context) => MyHomePage(),
      // '/c': (BuildContext context) => MyPage(title: 'page C'),
    },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home:MyHomePage(),
    );
  }
}




