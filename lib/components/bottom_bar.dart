import 'package:flutter/material.dart';

class BottomBarComponent extends StatelessWidget {
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type:BottomNavigationBarType.fixed,
      items:[BottomNavigationBarItem(icon:Icon(Icons.home,size: 30.0,),title: Text('Home'),),
      BottomNavigationBarItem(icon:Icon(Icons.people,size: 30.0),title: Text('Profile')),
      BottomNavigationBarItem(icon:Icon(Icons.add_circle_outline,size: 30.0),title: Text('Add Post')),
      BottomNavigationBarItem(icon:Icon(Icons.notifications,size: 30.0),title: Text('Notifications')),
       BottomNavigationBarItem(icon:Icon(Icons.card_travel,size: 30.0),title: Text('Jobs')),
      ],
      );
  }
}
