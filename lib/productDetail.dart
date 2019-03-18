import 'package:flutter/material.dart';

import './components/list_card.dart';

class ProductDetailPage extends StatelessWidget {
   String title = '';
   String sub_title = '';
   String description = '';
ProductDetailPage(this.title, this.sub_title ,  this.description); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(padding:EdgeInsets.symmetric(horizontal:5.0, vertical: 25.0),
          child: Card(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'here comes Title: any length.',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.w800),
                          ),
                          Text('-here will come the sub-title',
                              style: TextStyle(
                                fontSize: 15.0,
                              )),
                          Text(
                            '1/2/2019',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                              'here comes description : Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '),
                          SizedBox(
                            height: 10.0,
                          ),
                          Image.asset('assets/dummy.jpg'),
                        ],
                      ),
                    ),
                  ),
          )
    );
  }
}
