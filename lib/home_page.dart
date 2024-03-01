import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, required this.time});

  final int time;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          children: [
            Text('widget.time: ${widget.time}'),
            Text('widget.time: ${widget.time}'),
            Text('widget.time: ${widget.time}'),
            Text('widget.time: ${widget.time}'),
          ],
        ),
      ), //
    );
  }
}
