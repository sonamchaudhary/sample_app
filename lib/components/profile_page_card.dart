import 'package:flutter/material.dart';

class ProfilePageCard extends StatefulWidget {
  @override
  ProfilePageCardState createState() => new ProfilePageCardState();
}

class ProfilePageCardState extends State<ProfilePageCard> {

  String _emailid = 'chaudharysonam17@gmail.com';
  String _name = 'Sonam Chaudhary';
  int _age = 24;
  String _qualification10 = 'punjab university';
  String _qualification12 = 'Non-medical';
  String _qualification_grads = 'Btech(ECE)';

  _editEmailDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text('your email-id'), content: TextField(
                onSubmitted:(String value){
               _emailid =value;
              },),
             actions: <Widget>[FlatButton(child: Text('Submit'),
              onPressed:() {
                Navigator.pop(context);
              },)],
              );
        });
  }

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
              padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                        onPressed: () {
                          _editEmailDialog(context);
                        },
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '$_emailid',
                        style: TextStyle(color: Colors.blueGrey),
                      )
                    ],
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
                Text(
                  '$_name',
                  style: TextStyle(color: Colors.blueGrey),
                ),
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
                Text(
                  '$_age',
                  style: TextStyle(color: Colors.blueGrey),
                ),
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
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              '10th:',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            Spacer(),
                            Text(
                              ' $_qualification10',
                              style: TextStyle(color: Colors.blueGrey),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '12th:',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            Spacer(),
                            Text(
                              '$_qualification12',
                              style: TextStyle(color: Colors.blueGrey),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Graduation:',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            Spacer(),
                            Text(
                              '$_qualification_grads',
                              style: TextStyle(color: Colors.blueGrey),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
