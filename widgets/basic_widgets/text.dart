import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 学习文字相关widget
class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle ts = TextStyle(inherit: false, color: CupertinoColors.black);
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(middle: Text('文本及样式')),
        child: ListView(
          children: <Widget>[
            Text('hello word!', style: ts),
            Text('hello word!-center', style: ts, textAlign: TextAlign.center),
            Text('many words...' * 5, style: ts),
            Text('many words maxline:1...' * 5, style: ts, maxLines: 1),
            Text('maxline:1, clip...' * 5,
                style: ts, maxLines: 1, overflow: TextOverflow.clip),
            Text('maxline:1, ellipsis...' * 5,
                style: ts, maxLines: 1, overflow: TextOverflow.ellipsis),
            Text('maxline:1, fade...' * 5,
                style: ts, maxLines: 1, overflow: TextOverflow.fade),
            Text('1.5 times words', style: ts, textScaleFactor: 1.5),
            Text(
              "Hello world",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                  height: 1.2,
                  fontFamily: "Courier",
                  background: new Paint()..color = Colors.yellowAccent,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.greenAccent,
                  decorationStyle: TextDecorationStyle.dashed),
            ),

          ],
        ));
  }
}
