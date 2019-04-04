import 'package:flutter/material.dart';

import '../productDetail.dart';
import 'button_bar.dart';

class ListCardComponent extends StatefulWidget {
  @override
  ListCardComponentState createState() => new ListCardComponentState();
}

class ListCardComponentState extends State<ListCardComponent> {
// Map<String, dynamic> posts ={};
  String title = 'Aryan yusaf Salman Zorbian.';
  String subTitle = 'President at Global Champ';
  String description =
      'here comes description : Lorem ipsum dolor aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.';

// ListCardComponent(this.title ,  this.sub_title , this.description);

  Widget build(BuildContext context) {
    return Container(
        height: 735.0,
        child: ListView.builder(
            // itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ProductDetailPage(
                        this.title, this.subTitle, this.description),
                  ),
                );
              },
              child: Card(
                margin: EdgeInsets.only(top: 10.0),
                child: Container(
                  // padding: EdgeInsets.all(10.0),
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
                      Container(padding: EdgeInsets.only(top: 10.0,left: 10.0),
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
                    ],
                  ),
              ),
              ));
        }));
  }
}
