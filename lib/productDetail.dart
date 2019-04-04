import 'package:flutter/material.dart';

import './components/bottom_bar.dart';
import './components/button_bar.dart';

class ProductDetailPage extends StatelessWidget {
   String title = '';
   String subTitle = '';
   String description = '';
ProductDetailPage(this.title, this.subTitle ,  this.description); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0.0,
          actions: <Widget>[
         IconButton(icon:Icon(Icons.more_horiz), onPressed: (){},)
        ],
      ),
        body: Container(
          height: 1000.0,
          child:ListView(children: <Widget>[
             Card(
                child: Container(
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/dummy.jpg'),
                              radius: 30.0,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '$title',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text('$subTitle',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 16.0,
                                  )),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          '$description',
                        style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Image.asset('assets/dummy.jpg'),
                       Container(padding: EdgeInsets.only(top: 20.0,left: 10.0),
                       child: Row(
                        children: <Widget>[
                          Text('612 Likes',style: TextStyle(fontSize: 16.0),), SizedBox(width: 5.0,),
                          Icon(
                            Icons.lens,
                            size:6.0,
                          ),SizedBox(width: 5.0,),
                          Text('5 Comments',style: TextStyle(fontSize: 16.0))
                        ],
                      ), ),
                    ButtonBarComponent(),
                   TextField(decoration: InputDecoration(hintText:'Add Comments',
                       hintStyle:TextStyle(fontSize: 18.0, color:Colors.black ) ),),
                       Card(
                child: Container(
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/dummy.jpg'),
                              radius: 15.0,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '$title',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text('$subTitle',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 12.0,
                                  )),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50.0),
                        child: Text(
                          '$description',
                          style: TextStyle(fontSize: 16.0),
                          softWrap: true,
                        ),
                      ),
                        Container(padding: EdgeInsets.only(top: 20.0,left: 10.0),
                       child:Container(padding: EdgeInsets.only(left: 40.0),
                         child:  Row( 
                        children: <Widget>[
                          Icon(Icons.thumb_up,color: Colors.grey,size: 15.0,),
                          SizedBox(width: 5.0,),
                           Icon(
                            Icons.lens,
                            size:3.0,
                          ),
                          SizedBox(width: 5.0,),
                          Text('612 Likes',style: TextStyle(fontSize: 14.0),), SizedBox(width: 5.0,),
                          SizedBox(width: 5.0,),
                          Icon(Icons.comment , color: Colors.grey,size: 15.0),
                          SizedBox(width: 5.0,),
                          Icon(
                            Icons.lens,
                            size:3.0,
                          ),
                          SizedBox(width: 5.0,),
                          Text('5 Comments',style: TextStyle(fontSize: 14.0))
                        ],
                      ),
                       ), 
                      ),
                    // ButtonBarComponent(),
                     ],
                  ),
              ),
              ),
                    ],
                  ),
                  
              ),
              ),
          ],)
          ),
           bottomNavigationBar: BottomBarComponent()
    );
  }
}
