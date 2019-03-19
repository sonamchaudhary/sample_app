import 'package:flutter/material.dart';

class ProfilePageCard extends StatefulWidget {
  @override
  ProfilePageCardState createState() => new ProfilePageCardState();
}

class ProfilePageCardState extends State<ProfilePageCard> {
  String _emailid = 'chaudharysonam17@gmail.com';
  String _name = 'Sonam Chaudhary';
  String _age = '24';
  String _qualification10 = 'punjab university';
  String _qualification12 = 'Non-medical';
  String _qualification_grads = 'Btech(ECE)';

  _editEmailDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('your email-id'),
            content: TextField( decoration:InputDecoration(
                hintText: 'enter email-id'),
              onSubmitted: (String value) {
              _emailid = value;
            }),
            actions: <Widget>[
              FlatButton(
                child: Text('Submit'),
                onPressed: () {
                  Navigator.pop(context);
                  this.setState(() {
                    _emailid ;
                  });
                },
              )
            ],
          );
        });
  }

  _editNameDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('your Name'),
            content: TextField(decoration: InputDecoration(hintText: 'enter name'),
              onSubmitted: (String value) {
                _name = value;
              },
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Submit'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  _editAgeDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('your Age'),
            content: TextField(decoration: InputDecoration(hintText: 'enter age'),
              onSubmitted: (String value) {
                _age = value;
              },
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Submit'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  _editQualificationDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('your Qualification'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  TextField(decoration: InputDecoration(hintText: '10th'),
                    onSubmitted: (String value) {
                      _qualification10 = value;
                    },
                  ),
                  TextField(decoration: InputDecoration(hintText: '12th'),
                    onSubmitted: (String value) {
                      _qualification12 = value;
                    },
                  ),
                  TextField(decoration: InputDecoration(hintText: 'Graduation'),
                    onSubmitted: (String value) {
                      _qualification_grads = value;
                    },
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Submit'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7.0,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Contact',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
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
                            fontSize: 18.0, fontWeight: FontWeight.bold),
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
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16.0,
                        ),
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
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  '$_name',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16.0,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.blueGrey),
                  onPressed: () {
                    _editNameDialog(context);
                  },
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
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  '$_age',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16.0,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.blueGrey),
                  onPressed: () {
                    _editAgeDialog(context);
                  },
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
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: Colors.blueGrey,
                        ),
                        onPressed: () {
                          _editQualificationDialog(context);
                        },
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              '10th:',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                            Spacer(),
                            Text(
                              ' $_qualification10',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16.0,
                              ),
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
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                            Spacer(),
                            Text(
                              '$_qualification12',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16.0,
                              ),
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
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w500),
                            ),
                            Spacer(),
                            Text(
                              '$_qualification_grads',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16.0,
                              ),
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
