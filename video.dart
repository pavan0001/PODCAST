import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("VIDEO",style: new TextStyle(fontSize: 30),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Icon(Icons.ondemand_video,size: 100.0,)
          ],
        ),
      ),
    );
  }
}
