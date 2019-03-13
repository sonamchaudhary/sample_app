import 'package:flutter/material.dart';

class ProfilePageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Contact',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Email-id',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: Colors.blueGrey,
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[Text('chaudharysonam17@gmail.com',style: TextStyle(color: Colors.blueGrey),)],
                  )
                ],
              )),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Name:',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Spacer(),
                Text('Sonam Chaudhary',style: TextStyle(color: Colors.blueGrey),),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.blueGrey),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Age:',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Spacer(),
                Text('24',style: TextStyle(color: Colors.blueGrey),),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.blueGrey),
                  onPressed: () {},
                )
              ],
            ),
          ),
               Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Qualifications',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: Colors.blueGrey,
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[Text('chaudharysonam17@gmail.com',
                    style: TextStyle(color: Colors.blueGrey),)],
                  ),
                  Row(
                    children: <Widget>[Text('chaudharysonam17@gmail.com',
                    style: TextStyle(color: Colors.blueGrey),)],
                  ),
                  Row(
                    children: <Widget>[Text('chaudharysonam17@gmail.com',
                    style: TextStyle(color: Colors.blueGrey),)],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
