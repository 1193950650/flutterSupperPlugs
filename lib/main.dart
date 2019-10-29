import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_i18n/flutter_i18n_delegate.dart';
import 'package:layflutter/view/18n/interNational.dart';
import 'package:layflutter/view/cengLayout/index.dart';
import 'package:layflutter/view/flexLayout/index.dart';
import 'package:layflutter/view/home/home.dart';
import 'package:layflutter/view/http/http.dart';
import 'package:layflutter/view/lineLayout/index.dart';
import 'package:layflutter/view/listView/list.dart';
import 'package:layflutter/view/liuLayout/index.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:layflutter/view/stoken/index.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
      localizationsDelegates: [
        FlutterI18nDelegate(true, "zh_CN"),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
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
        '/httpPage':(BuildContext context) => new HttpModel(),
        '/stoken':(BuildContext context) => new MyShimmer()
      },
    );
  }
  
}