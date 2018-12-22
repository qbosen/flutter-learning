import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/basic_widgets/simple_widgets.dart';

class WidgetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets Demos"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          NavigatorButton.create(context,
              title: 'echo page',
              routePage: Echo(
                text: 'hello word',
              )),
        ],
      ),
    );
  }
}

class NavigatorButton {
  static MaterialButton create(context,
          {String title, Widget routePage, Color color = Colors.lightBlue}) =>
      MaterialButton(
        child: Text(title),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => routePage));
        },
        color: color,
      );
}
