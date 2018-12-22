import 'package:flutter/material.dart';

/// 显示由构造器传入的[text]内容 默认底色[backgroundColor]为[Colors.grey]
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
    return Center(
      child: Container(
        child: Text(text),
        color: backgroundColor,
      ),
    );
  }
}

/// 计数器
class CounterWidget extends StatefulWidget {
  final int initValue;

  const CounterWidget({Key key, this.initValue = 0});

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter;

  // 1. 每个[state]只会在最开始调用一次
  @override
  void initState() {
    super.initState();
    _counter = widget.initValue;
    print('initState');
  }

  // 2. 用于构建子树
  //在调用initState()之后。
  //在调用didUpdateWidget()之后。
  //在调用setState()之后。
  //在调用didChangeDependencies()之后。
  //在State对象从树中一个位置移除后（会调用deactivate）又重新插入到树的其它位置之后。
  @override
  Widget build(BuildContext context) {
    print('build');
    return Center(
      child: FlatButton(
          child: Text('$_counter'),
          onPressed: () => setState(() => _counter++)),
    );
  }

  // 3. widget重新构建时，检查[canUpdate]
  //如果是更新widget则触发，否则新产生一个widget
  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  // 4. 当State对象从树中被移除时，会调用此回调
  // 如果移除后没有将其插入树中，则调用[dispose]
  @override
  void deactivate() {
    super.deactivate();
    print("deactive");
  }

  // 5. 当State对象从树中被永久移除时调用；通常在此回调中释放资源
  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  // 热重载调用，只在开发中存在
  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}
