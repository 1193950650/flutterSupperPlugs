import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HttpModel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HttpModel();
  }
}

class _HttpModel extends State<HttpModel> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('http请求'),
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child:
                      Text('在dart中，进行http请求最常用的方法有基于 dart 的 http库，另外一种则是dio库。'),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text('Http test:'),
                ),
                IconButton(
                  icon: Icon(Icons.check_circle),
                  onPressed: (){
                    HttpClient http = new HttpClient();
                    http.getUrl(Uri.parse('http://v.juhe.cn/toutiao/index'));
                    var response = http.close();
                    
                  },
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text('dio:'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
