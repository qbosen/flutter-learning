import 'package:flutter/material.dart';

class Echo extends StatelessWidget {
  final String text;
  final Color backgroundColor;

  const Echo({
    Key key,
    @required this.text,
    this.backgroundColor: Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Echo Page'),
      ),
      body: Center(
        child: Container(
          child: Text(text),
          color: backgroundColor,
        ),
      ),
    );
  }
}
