import 'package:flutter/material.dart';

class CommentPage extends StatelessWidget {
  
  String title = '';
  String subTitle = '';
  String comment = '';
CommentPage(this.title, this.subTitle, this.comment); 

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 0.0,
      child: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.baseline,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/dummy.jpg'),
                    radius: 18.0,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20.0,),
                    Text(
                      '$title',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w700),
                    ),
                    Text('$subTitle',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14.0,
                        )),
                        SizedBox(height: 5.0,),
                     Text(
                        '$comment',
                          style: TextStyle(fontSize: 16.0),
                          softWrap: true,
                             ),  
                  ],
                )
              ],
            ),
           
            Container(
              padding: EdgeInsets.only(top: 8.0, left: 10.0),
              child: Container(
                padding: EdgeInsets.only(left: 45.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.thumb_up,
                      color: Colors.grey,
                      size: 15.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      Icons.lens,
                      size: 3.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '1 Like',
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(Icons.comment, color: Colors.grey, size: 15.0),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      Icons.lens,
                      size: 3.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text('1 Reply', style: TextStyle(fontSize: 14.0))
                  ],
                ),
              ),
            ),
            // ButtonBarComponent(),
          ],
        ),
      ),
    );
  }
}
