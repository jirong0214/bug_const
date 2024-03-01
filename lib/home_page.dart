import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, required this.time});

  final int time;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('time1: ${widget.time}');
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          children: [
            Text('time0: ${widget.time}'),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('time2: ${widget.time}');
          _logTime();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), //
    );
  }

  void _logTime() {
    print('time3: ${widget.time}');
  }
}
