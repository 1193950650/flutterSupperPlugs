import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class LineLayout extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return _LineLayout();
//   }
  
// }

class LineLayout extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Mine();
  }
  
}
class _Mine extends State<LineLayout>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            height: 50,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    child: Text('姓名：')
                  ),
                ),
                 Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                    child: Text('程序员')
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

}
// class _LineLayout extends State<LineLayout>{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('线性布局'),
//       ),
//       body: Column(
//           children: <Widget>[
//             Row(
//               children: <Widget>[
//                   Expanded(
//                     flex: 1,
//                     child: Container(
//                       height: 50,
//                       color: Colors.red,
//                     ),
//                   ),
//                   Expanded(
//                     flex: 3,
//                     child: Container(
//                       height: 50,
//                       color:Colors.black
//                     ),
//                   )
//               ],
//             ),
//             Column(
//               children: <Widget>[
//                 Container(
//                   height: 300,
//                   width: 300,
//                   color:Colors.red,
//                   child: Column(
//                     children: <Widget>[
//                       Expanded(
//                         flex: 3,
//                         child: Container(
//                           width: 300,
//                           color:Colors.yellow,
//                         ),
//                       ),
//                       Expanded(
//                         flex: 2,
//                         child: Container(
//                           width: 300,
//                           color: Colors.blue,
//                         ),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//     );
//   }

// }