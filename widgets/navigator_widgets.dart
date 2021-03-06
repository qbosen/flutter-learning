import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/basic_widgets/simple_widgets.dart';
import 'package:flutter_app/widgets/basic_widgets/text.dart';

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
          _createScaffoldNavigateButton(context,
              buttonTitle: 'echo page',
              barTitle: 'Echo Page',
              bodyPage: Echo(text: 'Hello World')),
          _createScaffoldNavigateButton(context,
              buttonTitle: 'counter',
              barTitle: '计数器',
              bodyPage: CounterWidget()),
          _createScaffoldNavigateButton(context,
              buttonTitle: 'TapBox',
              barTitle: '状态管理',
              bodyPage: ListView(children: <Widget>[
                TapBoxA(),
                Divider(),
                ParentWidget(),
                Divider(),
                ParentWidgetC(),
              ])),
          _createNavigateButton(context,
              title: 'iOS button', routePage: CupertinoTestRoute()),
          _createNavigateButton(context,
              title: '文本样式', routePage: TextWidget()),
        ],
      ),
    );
  }

  /// 用于将一些小部件放入容器
  Widget _createScaffoldWidget(String barTitle, Widget bodyPage) {
    return Scaffold(
      appBar: AppBar(
        title: Text(barTitle),
      ),
      body: bodyPage,
    );
  }

  // 创建一个 被包装的跳转页面 按钮
  MaterialButton _createScaffoldNavigateButton(context,
      {buttonTitle, barTitle, Widget bodyPage}) {
    return _createNavigateButton(context,
        title: buttonTitle,
        routePage: _createScaffoldWidget(barTitle, bodyPage));
  }

  /// 创建一个跳转到制定页面的按钮
  MaterialButton _createNavigateButton(context,
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
