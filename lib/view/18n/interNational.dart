import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class InterNation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InterNation();
  }
  
}

class _InterNation extends State<InterNation>{
  int cont = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(FlutterI18n.translate(context, "home.title")),
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
                      onTap: (){
                        FlutterI18n.refresh(context,"zh_CN");
                        this.setState((){
                          cont = 1;
                        });
                      },
                      child: Center(
                      child: Text(FlutterI18n.translate(context, "home.china"),style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w900),),
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
                      onTap: (){
                         FlutterI18n.refresh(context,"en_US");
                          this.setState((){
                            cont = 1;
                          });
                      },
                      child: Center(
                      child: Text(FlutterI18n.translate(context, "home.us"),style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w900),),
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
                      child: Text(FlutterI18n.translate(context, "home.hokong"),style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w900),),
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
                      child: Text(FlutterI18n.translate(context, "home.taiwan"),style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w900),),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  
}