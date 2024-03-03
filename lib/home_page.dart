import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.time});

  final int time;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  initState() {
    super.initState();
    Fluttertoast.showToast(msg: "initState: ${widget.time}",); // 错误
    Fluttertoast.showToast(msg: "initState: ${widget.time}",); // 正确
  }

  @override
  Widget build(BuildContext context) {

    // 错误
    Fluttertoast.showToast(msg: "build: ${widget.time}",);

    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          children: [
            Column(
            children: buildChildren(),),
            Text('Text5: ${widget.time}'), // 正确
          ],
        ),
      ), //
    );
  }

  List<Widget> buildChildren () {
    // 错误
    Fluttertoast.showToast(
      msg: "buildChildren : ${widget.time}",
    );

    return [
      Text('Text1: ${widget.time}'), // 错误
      Text('Text2: ${widget.time}'), // 错误
      Text('Text3: ${widget.time}'), // 错误
      Text('Text4: ${widget.time}'), // 正确
    ];
  }
}