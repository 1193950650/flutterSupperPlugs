import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexLayout extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FlexLayout();
  }
  
}

class _FlexLayout extends State<FlexLayout>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Flex(
          direction:Axis.vertical,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
                 Expanded(
              flex: 1,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
                 Expanded(
              flex: 1,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
                 Expanded(
              flex: 1,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
                 Expanded(
              flex: 1,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }

}