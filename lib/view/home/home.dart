import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Home();
  }
  
}

class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(FlutterI18n.translate(context, "home.home")),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
         child: GridView.count(
           crossAxisCount: 4,
           crossAxisSpacing: 5,
           mainAxisSpacing: 5,
           children: <Widget>[
             Container(
               color: Colors.red,
               child: InkWell(
                 onTap: (){
                     Navigator.pushNamed(context,'/lineLayout'); 
                 },
                 child: Center(
                 child: Text('线性布局',style: TextStyle(color: Colors.white),),
               ),
               ),
             ),
             Container(
               color: Colors.red,
                child: InkWell(
                   onTap: (){
                   Navigator.pushNamed(context,'/cengLayout'); 
                 },
                 child: Center(
                  child: Text('层式布局',style: TextStyle(color: Colors.white),),
                ),
               ),
             ),
             Container(
               color: Colors.red,
                child: InkWell(
                onTap: (){
                     Navigator.pushNamed(context,'/liuLayout'); 
                 },
                 child: Center(
                 child: Text('流式布局',style: TextStyle(color: Colors.white),),
               ),
               ),
             ),
              Container(
               color: Colors.red,
                child: InkWell(
                onTap: (){
                    Navigator.pushNamed(context,'/flexLayout'); 
                 },
                 child: Center(
                 child: Text('弹性布局',style: TextStyle(color: Colors.white),),
               ),
               ),
              ),
              Container(
               color: Colors.red,
                child: InkWell(
                onTap: (){
                    Navigator.pushNamed(context,'/18n'); 
                 },
                 child: Center(
                 child: Text('国际化',style: TextStyle(color: Colors.white),),
               ),
               ),
              ),
              Container(
               color: Colors.red,
                child: InkWell(
                onTap: (){
                    Navigator.pushNamed(context,'/listView'); 
                 },
                 child: Center(
                 child: Text('电话薄导航',style: TextStyle(color: Colors.white),),
               ),
               ),
              ),
              Container(
               color: Colors.red,
                child: InkWell(
                onTap: (){
                    Navigator.pushNamed(context,'/httpPage'); 
                 },
                 child: Center(
                 child: Text('数据请求',style: TextStyle(color: Colors.white),)
               ),
               ),
              ),
               Container(
               color: Colors.red,
                child: InkWell(
                onTap: (){
                    Navigator.pushNamed(context,'/stoken'); 
                 },
                 child: Center(
                 child: Text('骨架屏',style: TextStyle(color: Colors.white),)
               ),
               ),
              )
           ],
         )
      ),
    );
  }
  
}