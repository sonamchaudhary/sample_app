import 'package:flutter/material.dart';

import './components/bottom_bar.dart';
import './components/button_bar.dart';
import './components/comment.dart';

class ProductDetailPage extends StatelessWidget {
   String title = '';
   String subTitle = '';
   String description = '';
   String comment= '';
ProductDetailPage(this.title, this.subTitle ,  this.description , this.comment); 
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
                          Icon(Icons.lens,size:6.0,),
                          SizedBox(width: 5.0,),
                          Text('5 Comments',style: TextStyle(fontSize: 16.0))
                        ],
                      ), ),
                    ButtonBarComponent(),
                   TextField(decoration: 
                   InputDecoration(
                     hintText:'Leave your thoughts here',
                       hintStyle:TextStyle( fontSize: 18.0, color:Colors.black54),
                        suffixIcon: Icon(Icons.arrow_right,size: 40.0,) ),),
                       CommentPage('$title','$subTitle','$comment'), 
                       CommentPage('$title','$subTitle','$comment'), 
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
