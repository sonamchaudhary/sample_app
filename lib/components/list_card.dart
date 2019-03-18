import 'package:flutter/material.dart';

class ListCardComponent extends StatelessWidget {
  @override
   String title = 'here comes Title: any length.';
   String sub_title = '-here will come the sub-title';
   String description = 'here comes description : Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.';

// ListCardComponent(this.title ,  this.sub_title , this.description);

  Widget build(BuildContext context) {
    return Container(
        height: 435.0,
        child: ListView.builder(
          itemCount: 5,
          itemBuilder:(BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                  Navigator.pushNamed(context, '/productDetail');
              },
              child: Card(
                margin: EdgeInsets.only(top: 10.0),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '$title',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w800),
                      ),
                      Text('$sub_title',
                          style: TextStyle(
                              fontSize: 15.0, )),
                      Text(
                        '1/2/2019',
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                          '$description'),
                      SizedBox(
                        height: 10.0,
                      ),
                      Image.asset('assets/dummy.jpg'),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
