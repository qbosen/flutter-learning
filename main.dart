import 'package:flutter/material.dart';
import 'package:flutter_app/demo/english_words.dart' show RandomWords;
import 'package:flutter_app/widgets/navigator_widgets.dart' show WidgetsPage;

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
        'widgets_page': (context) => WidgetsPage(),
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
          NavigatorButton.create(context, '单词列表', 'random_words'),
          NavigatorButton.create(context, 'Widgets', 'widgets_page')
        ],
      ),
    );
  }
}

class NavigatorButton {
  static MaterialButton create(context, title, routeName,
          {color = Colors.lightBlue}) =>
      MaterialButton(
        child: Text(title),
        onPressed: () {
          Navigator.of(context).pushNamed(routeName);
        },
        color: color,
      );
}
