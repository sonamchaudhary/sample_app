import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            otherAccountsPictures: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.pop(context))
            ],
            accountName: Text('Sonam Chaudhary'),
            accountEmail: Text('chaudharysonam17@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/dummy.jpg'),
              radius: 40.0,
            ),
          ),
          ListTile(
            title: const Text('View Profile',style: TextStyle(fontSize: 17.0),),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          ListTile(
            title: const Text('Discover more',style: TextStyle(fontSize: 17.0),),
          ),
          Divider(),
        ],
      ),
    );
  }
}
