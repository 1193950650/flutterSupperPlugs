import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:layflutter/view/18n/interNational.dart';
//import 'package:layflutter/routers/index.dart';
import 'package:layflutter/view/cengLayout/index.dart';
import 'package:layflutter/view/flexLayout/index.dart';
import 'package:layflutter/view/home/home.dart';
import 'package:layflutter/view/lineLayout/index.dart';
import 'package:layflutter/view/listView/list.dart';
import 'package:layflutter/view/liuLayout/index.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
    localizationsDelegates: [
      // 本地化代理
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    supportedLocales: [
        const Locale('en', 'US'), // 美国英语
        const Locale('zh', 'CN'), // 中文简体
        //其它Locales
      ],
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
      routes: <String, WidgetBuilder>{
        '/cengLayout':( BuildContext context)=> new Cenglayout(),
        '/flexLayout':( BuildContext context)=>new FlexLayout(),
        '/lineLayout':( BuildContext context)=>new LineLayout(),
        '/liuLayout':( BuildContext context)=> new LiuLayout(),
        '/18n':( BuildContext context)=> new InterNation(),
        '/listView':( BuildContext context)=> new ListViewPage(),
      },
    );
  }
  
}