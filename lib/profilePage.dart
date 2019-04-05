import 'package:flutter/material.dart';

import './components/profile_page_card.dart';
import './components/bottom_bar.dart';

class MyProfilePage extends StatelessWidget {

   String name='sonam chaudhary';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: <Widget>[
          Container(
            width: 280.0,
            color: Colors.white,
            margin: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.grey,
                  onPressed: () {},
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(hintText: '$name'),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Container(
                  height: 180.0,
                  color: Colors.blueGrey,
                ),
                 Container(
                  padding: EdgeInsets.only(right: 20.0),
                  height: 60.0,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Icon(
                        Icons.edit,
                        size: 30.0,
                        color: Colors.blueGrey,
                      )
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/dummy.jpg'),
                  radius: 80.0,
                ),
                 Container(
                   alignment:Alignment(0.22,3.3) ,
                  child: CircleAvatar(
                    backgroundColor: Colors.green[400],
                    radius: 10.0,
                ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
            ),
            Text('$name',style: TextStyle(color: Colors.black,fontSize: 24.0),),
            Text('--',style: TextStyle(color: Colors.black,fontSize: 34.0),),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Text('India',style:TextStyle(fontSize: 16.0),),
               SizedBox(width: 4.0,),
               Icon(Icons.lens,size:6.0,),
               SizedBox(width: 4.0,),
               Text('15',style: TextStyle(fontSize: 16.0),),
               SizedBox(width: 8.0,),
               Icon(Icons.group , color: Colors.grey[700],)
            ],),
            Divider(color: Colors.black),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(alignment: Alignment(0.0, 10.0),
                  children: <Widget>[
                  Container(alignment:Alignment(0.5,-0.10),child: CircleAvatar(
                  backgroundImage: AssetImage('assets/dummy.jpg'),
                  radius: 12.0,
                ) ,),
                  Container(alignment:Alignment(0.0, -0.20),child: CircleAvatar(
                  backgroundImage: AssetImage('assets/dummy.jpg'),
                  radius: 12.0,
                ) ,),
                 Container(alignment:Alignment(0.0,-0.30),child: CircleAvatar(
                  backgroundImage: AssetImage('assets/dummy.jpg'),
                  radius: 12.0,
                ) ,),
                 ],),
                 SizedBox(width:8.0,),
                Text('See all connections',style: TextStyle(fontSize:16.0,fontWeight: FontWeight.bold),)
              ],),
            Container(
              height: 400.0,
              width: 360.0,
              child: ProfilePageCard(),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomBarComponent(),
    );
  }
}
