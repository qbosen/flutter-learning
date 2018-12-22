import 'package:flutter/material.dart';
import 'package:flutter_app/demo/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new MyHomePage(title: 'Flutter Demos'),
      theme: new ThemeData(primaryColor: Colors.white),
      routes: {
        'random_words': (context) => RandomWords(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          NavigatorButton.create(context,
              title: '单词列表', routeName: 'random_words'),
        ],
      ),
    );
  }
}

class NavigatorButton {
  static MaterialButton create(context,
          {title, routeName, color = Colors.lightBlue}) =>
      MaterialButton(
        child: Text(title),
        onPressed: () {
          Navigator.of(context).pushNamed(routeName);
        },
        color: color,
      );
}
