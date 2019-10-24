import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListViewPage();
  }
}

class _ListViewPage extends State<ListViewPage> {
  ScrollController controller = new ScrollController();
  double bashu = 50.0;
  @override
  Widget listFn() {
    Widget page;
    page = ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 200,
        controller: controller,
        shrinkWrap:true,
        itemBuilder: (context, i) => Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset.zero,
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 0)
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        height: bashu,
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text(i.toString()),
                        ),
                      ))
                ],
              ),
            ));
    return page;
  }
  List<Widget> pageRight(){
    List<Widget> list = new List();
    List<Map> abc = [{'text':'A','Index':'0'},{'text':'B','Index':'34'},{'text':'C','Index':'76'},{'text':'D','Index':'89'},{'text':'E','Index':'2'},{'text':'F','Index':'50'},{'text':'G','Index':'119'},{'text':'H','Index':'199'}];
    abc.forEach((value)=>{
       list.add(
           InkWell(
            onTap: (){
              print(int.parse(value['Index']) * bashu);
              controller.animateTo(int.parse(value['Index']) * bashu,
              duration: Duration(microseconds: 100000), curve: Curves.easeIn);
            },
            child: Container(
              decoration: BoxDecoration(
              shape: BoxShape.circle
              ),
              height: 30,
              width: 30,
              alignment: Alignment.center,
              child: Text(value['text'],style: TextStyle(color: Colors.blue))
            ),
          ),
       )
    });
    return list;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter电话薄'),
      ),
      body: Stack(
        children: <Widget>[
          listFn(),
          Container(
            alignment: Alignment.topRight,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topRight,
                    width: 20,
                    margin: EdgeInsets.only(right: 5),
                    child: Center(
                      child: Container(
                        width: 20,
                        height: 300,
                        child: Column(
                          children: pageRight()
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
