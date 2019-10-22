import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InterNation extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InterNation();
  }
  
}

class _InterNation extends State<InterNation>{
  String languge = '中文';
  int cont = 0;
  changeLanguge(int str){
    this.setState((){
      cont = str;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 国际化'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
                 Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 0,bottom: 10,right: 0),
                    height: 50,
                    //color: Colors.grey,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius : 5.0,
                          offset: Offset(3.0, 3.0),
                        )
                      ]
                    ),
                    child: InkWell(
                      onTap: changeLanguge(0),
                      child: Center(
                      child: Text('简体中文(中国)',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w900),),
                    ),
                    ),
                  ),
                )
              ],
            ),
                 Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 0,bottom: 10,right: 0),
                    height: 50,
                    //color: Colors.grey,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius : 5.0,
                          offset: Offset(3.0, 3.0),
                        )
                      ]
                    ),
                    child: InkWell(
                      child: Center(
                      child: Text('English(Unite States)',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w900),),
                    ),
                    )
                  ),
                )
              ],
            ),
                 Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 0,bottom: 10,right: 0),
                    height: 50,
                    //color: Colors.grey,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius : 5.0,
                          offset: Offset(3.0, 3.0),
                        )
                      ]
                    ),
                    child: Center(
                      child: Text('粤语(中国香港)',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w900),),
                    ),
                  ),
                )
              ],
            ),
                 Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 0,bottom: 10,right: 0),
                    height: 50,
                    //color: Colors.grey,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius : 5.0,
                          offset: Offset(3.0, 3.0),
                        )
                      ]
                    ),
                    child: Center(
                      child: Text('繁体(中国台湾)',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w900),),
                    ),
                  ),
                )
              ],
            ),
          
                 Container(
                  child: Text('您现在选择的语言是：$languge'),
                 )
          
          ],
        ),
      ),
    );
  }
  
}