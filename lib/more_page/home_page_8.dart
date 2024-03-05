
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage8 extends StatefulWidget {
  const HomePage8({super.key, required this.time});

  final int time;

  @override
  State<HomePage8> createState() => _HomePage8State();
}

class _HomePage8State extends State<HomePage8> {

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