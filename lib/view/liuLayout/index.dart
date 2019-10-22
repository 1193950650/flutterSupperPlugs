import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LiuLayout extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LiuLayout();
  }
  
}

class _LiuLayout extends State<LiuLayout>{
  Widget renderWei(){
    List<Widget> listwe = new List();
    Widget contanner;
    for (var i = 0; i < 100; i++) {
      listwe.add(
         new Container(
          height: 50,
          width: 120,
          color: Colors.red,
          child: Text(i.toString()),
        )
      );
    }
    contanner = Container(
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 9,
        runSpacing: 9,
        children: listwe,
      ),
    );
    return contanner;
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('流式布局'),
      ),
      body: Scrollbar(
        child: Padding(
        padding: EdgeInsets.all(10),
        child: renderWei(),
      ),
      )
    );
  }

}