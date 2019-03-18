import 'package:flutter/material.dart';

import './homepage.dart';
import './profilePage.dart';
import './productDetail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       routes: <String, WidgetBuilder> {
      '/profile': (BuildContext context) => MyProfilePage(),
      '/homepage': (BuildContext context) => MyHomePage(),
      '/productDetail':(BuildContext context) => ProductDetailPage('hello', 'hfjjjj', 'fdjjhhhjhkhjhgjh'),
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




