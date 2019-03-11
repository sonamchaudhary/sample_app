import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget{

  Widget build(BuildContext context) {
    return  Container(
              height: 140.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  //we have to use map fxn to iterate in these cards.
                  Card(elevation:5.0,
                      child: Container(width: 300.0,
                      height: 200.0,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: CircleAvatar(
                                  radius: 20.0,
                                  child: Text('1'),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 5.0),
                                child: Text(
                                  'Tell your professional story',
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.black),
                                ),
                              ),
                              Text(
                                'Add your job to show, who you are',
                                softWrap: true,
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.black87),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
                  Card(elevation:5.0,
                    child: Container(height:250.0 ,
                    width:300.0 ,
                      child:   Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: CircleAvatar(
                                  radius: 20.0,
                                  child: Text('2'),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 5.0),
                                child: Text(
                                  'Keep building your network',
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.black),
                                ),
                              ),
                              Text(
                                'Continue adding connections to grow your network and reach.',
                                softWrap: true,
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.black87),
                              ),
                            ],
                          ),
                        )
                      ],
                    ), )
                 
                  ),
                  Card(elevation:5.0,
                    child: Container(height:250.0 ,
                    width:300.0,
                      child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: CircleAvatar(
                                  radius: 20.0,
                                  child: Text('3'),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 5.0),
                                child: Text(
                                  'Hashtags followed!',
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.black),
                                ),
                              ),
                              Text(
                                'You will see posts with these hashtags at the top of your feed.',
                                softWrap: true,
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.black87),
                              ),
                            ],
                          ),
                        )
                      ],
                    ) ,)
              ),
                ],
              ),
            );
  }
}