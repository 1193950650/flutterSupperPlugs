import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cenglayout extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Cenglayout();
  }
  
}

class _Cenglayout extends State<Cenglayout>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('层式布局'),
      ),
      body: Container(
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          children: <Widget>[
            Text('flutter层式布局',style:TextStyle(color:Colors.red,fontSize: 18,fontWeight: FontWeight.w800)),
            Text('在flutter中，层式布局主要体现是在当我们需要一个组件覆盖到另外一个组件上的时候，就会用到这个组件。例如：一般app的广告界面'),
            Container(
              child:Stack(
                fit: StackFit.passthrough,
                children: <Widget>[
                   Positioned(
                   left: 30,
                   top: 0,
                   child: Container(
                     child: Icon(Icons.ac_unit)
                   ),
                 ),
                Positioned(
                   left: 30,
                   top: -10,
                   child: Container(
                     child: Icon(Icons.ac_unit)
                   ),
                 )
                ],
              ),
            )
          ],
        ),
        padding: EdgeInsets.all(5),
      ),
    );
  }

}